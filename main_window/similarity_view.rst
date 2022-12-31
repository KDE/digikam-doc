.. meta::
   :description: digiKam Main Window Similarity View
   :keywords: digiKam, documentation, user manual, photo management, open source, free, learn, easy

.. metadata-placeholder

   :authors: - digiKam Team

   :license: see Credits and License page for details (https://docs.digikam.org/en/credits_license.html)

.. _similarity_view:

Similarity View
---------------

digiKam characterizes every image by a lengthy number using a special technique (Haar based processing algorithm) that makes it possible to compare images by comparing this calculated signature. The less numerical difference there is between any two image signatures, the more they resemble each other. This technique has three implementations in digiKam:

    - **Duplicates**: before you can have digiKam finding duplicates the signatures (or fingerprints) have to be calculated. You can start that process with the button **Update Fingerprints** which initiates a total rebuild of the image signatures (may take hours if you have a large collection, an estimate is 2 hours for 10'000 images). Once the fingerprints are calculated you can use **Find Duplicates**, but it will take a long time too as it has to compare every image with any other image. So the way to go in both cases is to confine your search to certain albums and/or tags. With the **Similarity Range** you can narrow down or enlarge the search result. Note that by lowering the upper threshold a little bit below 100 % you can keep things like exact copies, images from series shots, etc. out of the search result if you want. 

    .. figure:: images/mainwindow_search_duplicates.webp
                :alt: Find duplicates searching in whole album collection

    An overview of the result will be given in the Left Sidebar. The first column shows the reference images of each single result. The Items column tells you how many images belong to each result including the reference image. The last column shows the average similarity which gives you an idea about how similar the images of every result might be. The reference image with its 100 % is not included in the average. Note that the results can be sorted by clicking on one of the column headers.

    Individual similarity values for each item can be obtained in the table view of the Image Area (**Table** button on the Main Toolbar). Click with the right mouse button over one of the column headers and select **Similarity** from **Item Properties** to display the similarity column. By clicking on the header of this column then the results will be sorted by similarity grouped by reference images. Clicking repeatedly on the header will toggle between ascending and descending order.

    - **Image** (Similar items): This is a drag and drop zone where you can drop any image to find a similar one. Drag an image from anywhere, even from outside digiKam (file manager, other programs), over the fuzzy search icon in the left sidebar, it will open and you drop it there or use **Find Similar...** from the context menu of a thumbnail in any other view. You can narrow down or enlarge the resulting selection with the similarity range here as well. In the field below you can enter a name for the search and save it. In the searches list below you find your saved searches. Clicking on the title bar of that list toggles the sorting order between ascending and descending. At the bottom you find an adaptive search field which can help you to find a particular search.

    .. figure:: images/mainwindow_search_similar.webp
                :alt: Searching similar items about a single image

    - **Sketch**: free hand color sketching: draw a quick sketch and digiKam will find corresponding images. You will find the same means to save your search as in the **Image** tab.

    .. figure:: images/mainwindow_search_sketch.webp
                :alt: Searching items by drawing a sketch
