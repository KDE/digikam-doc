(function() {//switch: v1.2
"use strict";

var all_langs = {
    "en": "English",
    //"ar": "&#1575;&#1614;&#1604;&#1618;&#1593;&#1614;&#1585;&#1614;&#1576;&#1616;&#1610;&#1614;&#1617;&#1577;&#1615;",
    "ca": "Catal&agrave;",
    "da": "‎dansk",
    "de": "Deutsch",
    "es": "Espa&ntilde;ol",
    //"fi": "Suomeksi",
    "fr": "Fran&ccedil;ais",
    //"id": "Bahasa Indonesia",
    "it": "Italiano",
    "ja": "&#x65E5;&#x672C;&#x8A9E;",
    "ko": "&#xD55C;&#xAD6D;&#xC5B4;",
    //"nb": "Norsk Bokm&#x00E5;l",
    "nl": "‎Nederlands",
    "pt_BR": "Portugu&ecirc;s",
    "ru": "&#x3A1;&#x443;&#x441;&#x441;&#x43A;&#x438;&#x439;",
    "sk": "Sloven&#269;ina",
    //"sl": "Sloven&#353;&#269;ina",
    "sr": "&#1089;&#1088;&#1087;&#1089;&#1082;&#1080;",
    "sv": "Svenska",
    "tr": "‎Türk&ccedil;e",
    "uk_UA": "&#x423;&#x43A;&#x440;&#x430;&#x457;&#x43D;&#x441;&#x44C;&#x43A;&#x430;",
    //"vi": "Ti&#x1EBF;ng Vi&#x1EC7;t",
    "zh_CN": "&#x4E2D;&#x6587;(&#x7B80;&#x4F53;)",
    "zh_TW": "&#x4E2D;&#x6587;(&#x7E41;&#x9AD4;)",
};

var Popover=function(){
function Popover(id){
    this.isOpen=false;
    this.$btn = $('#' + id);
    this.$dialog = this.$btn.next();
    this.$list = this.$dialog.children("ul");
    this.sel = null;
    this.beforeInit();
}

Popover.prototype={
beforeInit: function() {
    var that=this;
    this.$btn.on("click", function(e){that.init();e.preventDefault();e.stopPropagation();});
    this.$btn.on("keydown", function(e) { if(that.btnKeyFilter(e)){that.init();e.preventDefault();e.stopPropagation();} });
},
init: function() {
    this.$btn.off("click");
    this.$btn.off("keydown");

    this.afterLoad();
},
afterLoad: function() {
    var release = DOCUMENTATION_OPTIONS.VERSION;
    const m = release.match(/\d\.\d+/g);
    if (m) {release = m[0];}
    var lang = DOCUMENTATION_OPTIONS.LANGUAGE;
    if(!lang || lang === "None" || lang === "") {lang = "en";}

    var list = this.buildList(lang);

    this.$list.children(":first-child").remove();
    this.$list.append(list);
    var that = this;
    this.$list.on("keydown", function(e) {that.keyMove(e);});

    this.$btn.removeClass("wait");
    this.btnOpenHandler();
    this.$btn.on("mousedown", function(e){that.btnOpenHandler(); e.preventDefault()});
    this.$btn.on("keydown", function(e){ if(that.btnKeyFilter(e)){that.btnOpenHandler();} });
},
buildList: function(l) {
    var url = new URL(window.location.href);
    let pathSplit = ["", l, url.pathname.split('/').slice(2).join('/')];
    var dyn = all_langs;
    var cur = l;
    var buf = [];
    var that=this;
    $.each(dyn, function(ix, title) {
        buf.push("<li");
        if (ix === cur) {
            buf.push(' class="selected" tabindex="-1" role="presentation"><span tabindex="-1" role="menuitem" aria-current="page">' + title + '</spanp></li>');
        } else {
            pathSplit[1] = ix;
            var href = new URL(url);
            href.pathname = pathSplit.join('/');
            buf.push(' tabindex="-1" role="presentation"><a href ="' + href + '" tabindex="-1">' + title + '</a></li>');
        }
    });
    return buf.join('');
},
dialogToggle: function(speed) {
    var wasClose = !this.isOpen;
    var that=this;
    if(!this.isOpen) {
        this.$btn.addClass("version-btn-open");
        this.$btn.attr("aria-pressed", true);
        this.$dialog.attr("aria-hidden", false);
        this.$dialog.fadeIn(speed, function() {
            that.$btn.parent().on("focusout", function(e) {that.focusoutHandler(); e.stopImmediatePropagation();})
            that.$btn.parent().on("mouseleave", function(e){that.mouseoutHandler(); e.stopImmediatePropagation();});
        });
        this.isOpen = true;
    } else {
        this.$btn.removeClass("version-btn-open");
        this.$btn.attr("aria-pressed", false);
        this.$dialog.attr("aria-hidden", true);
        this.$btn.parent().off("focusout");
        this.$btn.parent().off("mouseleave");
        this.$dialog.fadeOut(speed, function() {
            if (this.$sel) {this.$sel.attr("tabindex", -1);}
            that.$btn.attr("tabindex", 0);
            if(document.activeElement !== null && document.activeElement !== document && document.activeElement !== document.body) {
                that.$btn.focus();
            }
        });
        this.isOpen = false;
    }

    if(wasClose) {
        if (this.$sel) {this.$sel.attr("tabindex", -1);}
        if(document.activeElement !== null && document.activeElement !== document && document.activeElement !== document.body) {
            var $nw = this.listEnter();
            $nw.attr("tabindex", 0);
            $nw.focus();
            this.$sel = $nw;
        }
    }
},
btnOpenHandler: function() {
    this.dialogToggle(300);
},
focusoutHandler: function() {
    var list = this.$list;
    var that = this;
    setTimeout(function() {
        if (list.find(":focus").length === 0) {
            that.dialogToggle(200);
        }
    }, 200);
},
mouseoutHandler: function() {
    this.dialogToggle(200);
},
btnKeyFilter: function(e) {
    if (e.ctrlKey || e.shiftKey) {return false;}
    if(e.key === " " || e.key === "Enter" || (e.key === "ArrowDown" && e.altKey) || e.key === "ArrowDown" || e.key === "ArrowUp") {
        return true;
    }
    return false;
},
keyMove: function(e) {
    if (e.ctrlKey || e.shiftKey) {return true;}
    var p = true;
    var $nw = $(e.target);
    switch(e.key) {
        case "ArrowUp": $nw = this.listPrev($nw); break;
        case "ArrowDown": $nw = this.listNext($nw); break;
        case "Home": $nw = this.listFirst(); break;
        case "End": $nw = this.listLast(); break;
        case "Escape": $nw = this.listExit(); break;
        case "ArrowLeft": $nw = this.listExit(); break;
        case "ArrowRight": $nw = this.listExit(); break;
        default: p = false;
    }
    if(p) {
        $nw.attr("tabindex", 0);
        $nw.focus();
        if (this.$sel) {this.$sel.attr("tabindex", -1);}
        this.$sel = $nw;
        e.preventDefault();
        e.stopPropagation();
    }
},
listPrev: function($nw) {
    if ($nw.parent().prev().length !== 0) {
        return $nw.parent().prev().children(":first-child");
    } else {
        return this.listLast();
    }
},
listNext: function($nw) {
    if ($nw.parent().next().length !== 0) {
        return $nw.parent().next().children(":first-child");
    } else {
        return this.listFirst();
    }
},
listFirst: function() {
    return this.$list.children(":first-child").children(":first-child");
},
listLast: function() {
    return this.$list.children(":last-child").children(":first-child");
},
listExit: function() {
    this.mouseoutHandler();
    return this.$btn;
},
listEnter: function() {
    return this.$list.children(":first-child").children(":first-child");
}
};
return Popover}();

$(document).ready(function() {
    var lang = DOCUMENTATION_OPTIONS.LANGUAGE;
    if(!lang || lang === "None") {lang = "en";}
    if(all_langs.hasOwnProperty(lang)) {$("#lang-popover").html(all_langs[lang]);}
    var lng_popover=new Popover("version-popover");
    var vsn_popover=new Popover("lang-popover");
});
})();
