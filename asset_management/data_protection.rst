.. meta::
   :description: Protect Your Images from Data Corruption and Loss
   :keywords: digiKam, documentation, user manual, photo management, open source, free, learn, easy, disk errors, disk failures, power surges, ECC, transmission errors, storage media deterioration, recovery, redundancy, disaster prevention, lifetime, temperature, data size, common myths, metadata, IPTC stored in image files, XMP files associated, keep the originals, storage, scalability, media, retrieval of images and metadata, copying image data over to the next generation of media, applications, operating systems, virtualization, viewing device, use of the www, ZFS, BTRFS

.. metadata-placeholder

   :authors: - digiKam Team

   :license: see Credits and License page for details (https://docs.digikam.org/en/credits_license.html)

.. _data_protection:

Data Corruption and Loss
========================

.. contents::

Main Factors of Digital Data Loss
---------------------------------

While digital data can be lost if the only copy of a digital media is stolen or lost in a fire - that kind of loss is just the same as can occur for traditional paper copies or negatives. So here we'll talk about the other sources of digital data loss that can roughly be categorized into the following areas of concern:

    - The physical deterioration of the media (all media deteriorate at different rates).

    - Undetected transmission errors during data transfer.

    - The lack of long-term support for proprietary digital formats.

    - Ancient hardware.

Kroll Ontrack, the world's largest data recovery firm, have some interesting statistics on what actually causes data loss.

============================== ========== =======
Cause of data loss             Perception Reality
============================== ========== =======
Hardware or system problem     78%         56%
Human error                    11%         26%
Software corruption or problem 7%          9%
Computer viruses               2%          4%
Disaster                       1-2%        1-2%
============================== ========== =======

So let us analyze these cases step by step.

.. _storage_deterioration:

Storage Deterioration
---------------------

The devices listed below are sorted by data access speed, from the slowest to the fastest.

Magnetic Media
~~~~~~~~~~~~~~

Magnetic tapes are commonly used in professional backup systems, but are rarely used in home systems. Tapes have issues with long-term data retention, can be damaged by strong magnetic fields, and tape technology is constantly changing. Yet tapes are safer in some ways than optical drives: they are less susceptible to scratches, dirt, and errors during writing. To avoid long-term data retention issues, tapes should be re-copied every 5-8 years, otherwise too many bits will fail for the checksum protection to correct. The downside of magnetic tapes is that the tape drives are expensive and the time to restore data can be 20x longer than from a hard disk. Tape backup systems are best used in large professional environments that need to back up massive amounts of data.

Optical Drives
~~~~~~~~~~~~~~

You may be surprised to know that many CD-Rs physically deteriorate at a faster rate than film. Yet while film may last decades longer than some optical media, digital media that are regularly backed up never lose anything. Film starts to decay the moment it's created and developed - digital 1's and 0's do not. Film will never have the same color and contrast as when it was first created. Digital doesn't do that. However, digital media is susceptible to corruption.

All optical media are prone to errors, even in a freshly written state. That's why they are heavily protected with error correcting codes that take up 25% of the effective storage on the disk. But even with that massive amount of protection they still suffer deterioration from chemical aging, ultra-violet exposure, scratches, dust, etc.

The average CD or DVD that is properly cared for should not be trusted for more than a few years. You can purchase archive-quality CDs and DVDs which last much longer, but they are  more difficult to obtain and are much more expensive. There are offers out there for gold-plated optical media that cost a few euros a piece that claim a storage life of 100 years (if you care to believe it).

Eventually all optical disks will become unreadable, but you can reduce the risk by using good quality disks, a good quality recorder, and storing the disk in an appropriate way. The best optical drive recorders are not much more expensive than the cheapest, but they write in a much more reliable way. It's a matter of choosing the right one.

For damaged optical drives, see the Wikipedia `list of all common applications <https://en.wikipedia.org/wiki/Data_recovery#List_of_data_recovery_software>`_ designed to get data from damaged floppies, hard drives, flash media such as camera memory and USB drives, and so forth.

Dual-layer optical media Blu-ray disk can store 50 GB, almost six times the capacity of a dual layer DVD at 8.5 GB. Everything that has been said about CDs/DVDs applies to Blu-ray disks as well.

Best practices: Burn optical media slowly with a good recorder on archive-quality media in an open, non-proprietary format. Read the data back to verify. Label them with some descriptive text, date, and author. Lock them away where it is clean, dark, animal safe and dry. And do not forget to copy them over to the next generation of media before you throw away your last piece of hardware or software able to read them.

Hard Disks
~~~~~~~~~~

Hard Disk drive (HDD) manufacturers keep their statistics to themselves. A manufacturer's guarantee buys you a new disk, but no data on how long it might last. Backblaze, a storage provider, reported a 1.5% annualized failure rate in 2023 based on an inventory of 237,278 hard drives. Google has done a large-scale study on `HDD <https://en.wikipedia.org/wiki/Hard_disk_drive>`_ failure mechanisms: `Disk Failures study <https://research.google.com/archive/disk_failures.pdf>`_.

In a nutshell: Disks run longest when operating between 35°C and 45°C. It may seem counter-intuitive, but HDD failure rates increase dramatically at lower temperatures. Controller parts (electronics) are the foremost sources of failure, an error source that SMART does not diagnose. Some `SMART <https://en.wikipedia.org/wiki/Self-Monitoring,_Analysis_and_Reporting_Technology>`_ errors are indicative of imminent failure, in particular scan errors and relocation counts. Lifetime expectancy is 4-5 years.

In general, and contrary to intuition or ecological considerations, continuously running a hard drive results in a longer lifetime than switching it on and off all the time. It has even been reported that HDD lifetimes can be reduced by aggressive power management that quickly spins down the drive. So the worst factors for HDD are probably vibrations, shocks, and cold temperatures.

If your disk starts to make weird noises, normal file recovery software isn’t going to help. Do a quick backup. (Use dd utility if possible, not a normal file backup since dd reads in a smooth, spiraling stream from beginning to end and doesn't stress the mechanics). There are specialist companies that can recover data from an otherwise failed drive, but the process is very expensive.

The Linux `SmartMonTools <https://en.wikipedia.org/wiki/Smartmontools>`_ suite allows you to query the storage hardware devices for future failure. We highly recommend the use of this kind of tool on your computer.

Solid State Drives
~~~~~~~~~~~~~~~~~~

`SSDs <https://en.wikipedia.org/wiki/Solid-state_drive>`_ are mechanically more robust and much faster than HDDs. SSDs are replacing HDDs as capacity and price have become more competitive, making them an increasingly good solution as permanent data storage devices.

Backblaze, a storage provider, reported a 1% annualized failure rate in 2023 based on an inventory of 3,144 SSDs. So SSDs are better than HDDs, but also not 100% reliable.

When SSDs are used as an external device, one major cause for data loss (often recoverable) is the unsafe removal of the SSD from the computer. Before data is saved from a computer memory to any attached device, it is stored for some time in a buffer. In hard drives this means seconds at most, whereas with SSDs it can be tens of minutes. Therefore, before you disconnect a flash device, always assure the data buffers have been flushed by using the *safely remove device* capabilities of your operating system.

Non-Volatile Memory
~~~~~~~~~~~~~~~~~~~

`NVM Express (NVMe) <https://en.wikipedia.org/wiki/NVMe>`_ for Non-Volatile Memory is a logical-device interface for accessing a computer's non-volatile storage media attached PCI Express (PCIe) bus. It use same very fast NAND flash memory used in SSDs, but uses the M.2 cards interface instead of the slower mSATA used with older HDDs.

NVMe allows host hardware and software to fully exploit the levels of parallelism possible in modern SSDs. NVMe reduces I/O overhead and brings various performance improvements relative to previous SSDs. mSATA interface protocols were developed for use with far slower HDDs where a very lengthy delay exists between a request and data transfer, and where data speeds are much slower than RAM speeds.

Since NVMe devices uses the same hardware than SSDs to store data, their reliability must be similar.

.. important::

    **In all cases, SSDs or NVMe as internal devices are the more modern and efficient solution to host the digiKam databases and your image collections.**

Power Supply Failures
---------------------

Power Surges
~~~~~~~~~~~~

As much as 1% of all computers are affected by lightning and power surges every year.

This section is about total data loss due to power surges. Of course you can have the occasional data loss due to a loss of power while saving files. But those losses can normally be restored without major difficulty.

You don’t have to wait for the next thunderstorm to be concerned about how a sudden fluctuation in electric power may affect your computer system. Recent statistics have shown that as much as 63% of all electronics casualties are due to power problems, and most computers are subject to two or more power anomalies a day. Since power surges or blackouts can occur anywhere and at any time, it makes sense to protect your computer by investing in some sort of surge protection device.

How Surges Happen
~~~~~~~~~~~~~~~~~

A power surge occurs when the power line voltage increases over nominal values for more than 10 milliseconds. Sixty percent of all power surges are caused from within the home or office, generally when a device with a motor (such as a clothes dryer, refrigerator, or water pump) shuts off and the power it was using is diverted elsewhere as excess voltage. The remaining 40 percent of power surges are generated by factors such as lightning, utility grid switching, line slapping, poor wiring, and so on.

While most electric devices are not affected by power surges, devices relying on computer chips and high-speed microprocessors are susceptible to serious damage. Power anomalies entering your computer can result in keyboard lockup, complete data loss, hardware degradation, damaged motherboards, and more. Failure to protect yourself from the inevitable can result in a loss of both time and money.

Surge Protectors
~~~~~~~~~~~~~~~~

The most common defense against power surges is a surge protector or suppressor, a device that works by absorbing some of the excess energy and diverting the rest of it to the ground. These are usually found in the form of a power strip (one of those long devices that have six or so outlets and a single, grounded plug). Bear in mind, however, that not every power strip serves as a surge protector.

When selecting your surge protector, you want to be sure it is listed as meeting the UL 1449 standard, which guarantees a certain minimum level of protection. You should also look for one that offers protection against lightning (not every one does) and provides insurance for equipment that is properly attached.

Because a power surge can follow any path to your computer, be sure that each peripheral connected to your system is protected. This includes your phone line or cable modem, as power can surge through these routes as well. A number of manufacturers are now producing surge suppressors that feature a phone jack for your modem along with the electrical outlets, while others have coaxial cable jacks for those who use a cable modem or TV tuner card.

If you have a notebook computer, you will want to carry a surge suppressor as well. A variety of suppressors designed specifically for notebooks are available. These are small in size with both electric and phone outlets that make them ideal for use on the road.

Uninterruptible Power Supply
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

While a surge suppressor will protect your system from minor fluctuations in the power lines, it won’t help in the case of a power black out. Even an outage of just a few seconds can result in the loss of valuable data, so you might find it worthwhile to invest in an **Uninterruptible Power Supply** (UPS).

Besides serving as surge suppressors, these devices automatically switch to battery power when a power outage occurs, giving you the opportunity to save data and shut down your system. Some models will even allow you to keep working until power is restored. When purchasing a UPS, be sure that it has the same qualities that you would seek in a surge suppressor, but also check out the battery life and included software.

Considering the potential risk to your computing system, ensuring its safety from power disturbances is a worthwhile investment. A quality surge suppressor or a 500W UPS are not too expensive for the peace of mind you’ll gain knowing your computer is well protected. At the very least, consider disconnecting all lines to your computer when you go on holidays.

Safeguarding Policy
-------------------

Web Storage Services
~~~~~~~~~~~~~~~~~~~~

Amazon Web Services includes S3 - Simple Storage Service. With appropriate configuration, you can mount S3 as a drive on Linux, Mac, and Windows systems, allowing you to use it as a backup destination for your favorite software. Google Drive is another popular cloud storage service where one can store infinite amount of data.

Cloud storage is expensive compared to hard drives at home. And you have to transfer the images over the relatively slow Internet. But we think cloud storage can be a useful safeguard against localized data loss of the most essential images.

Google Photo and Flickr provide online storage services that are specialized for photographs. Their free space is limited, so you won't want to store full resolution images online. But the paid-accounts offer more storage.

Web-based solutions are probably pretty safe in terms of data retention. Transmission errors are automatically corrected (thanks to the TCP protocol) and the big companies usually have backups included plus distributed storage so they themselves are disaster proof.

.. figure:: images/dam_inaturalist_export.webp
    :alt:
    :align: center

    digiKam Provide a Tool to Export Items to iNaturalist Web Service

Transmission Errors
~~~~~~~~~~~~~~~~~~~

Data loss does not only occur from storage devices, data can also get lost when traveling inside the computer or across networks (although the network traffic itself via TCP is error protected). Errors do occasionally occur on internal computer buses and memory chips. Consumer hardware has no protection against random bit errors, but the technology to monitor and correct errors exists. You can buy ECC (error code correction) protected memory, that will work with a motherboard with ECC support, although it is expensive. With `ECC RAM <https://en.wikipedia.org/wiki/ECC_memory>`_ at least the memory will be monitored for single bit errors and corrected. Double bit errors may escape detection but they occur too infrequently to worry about.

.. figure:: images/dam_transmission.webp
    :alt:
    :align: center

    The Data Workflow Between Application and Storage Media

This diagram depicts the transmission chain elements in a computer, all transitions are susceptible to transmission errors. The Linux `ZFS <https://en.wikipedia.org/wiki/ZFS>`_ and `BTRFS <https://en.wikipedia.org/wiki/Btrfs>`_ file systems are designed to ensure the integrity of the OS to disk path under Linux.

The Bit Error Rate (BER) for memory and transmission channels is in the order of 1 in 1 trillion (1E-12 per bit). That means that 1 in 3000 thirty-megabyte images has an error due to a transmission problem. Now how dramatic that is for an image is left to chance. It could mean that the image is destroyed or that a pixel somewhere changed its value. But because of the compression used on almost all images, one cannot predict the impact of a single bit error.

The worst of all is that there will likely be no warning from your hardware when a transmission or memory error occurs. All these glitches will occur unnoticed, until one day you open the photograph, and to your surprise, it's broken. It seems worrisome that there should be no protection for transmission errors within a computer. It is astounding that the Internet (TCP protocol) is much safer as a data path than inside a computer.

Flaky power supplies are another source of transmission losses because they create interference with the data streams. With many normal files systems, these errors can go unnoticed.


Future of File-systems
~~~~~~~~~~~~~~~~~~~~~~

`ZFS <https://en.wikipedia.org/wiki/ZFS>`_ from Oracle seems to be one of two candidates to deal with disk errors on a low level, and it is highly scalable. It is Open Source, heavily patented, comes with an GPL incompatible license, and is available on Linux and macOS.

Oracle has also introduced its `BTRFS <https://en.wikipedia.org/wiki/Btrfs>`_ file system. It employs the same protection technique as **ZFS** does, and is available on Linux.

Human Errors
------------

Theft And Accidents
~~~~~~~~~~~~~~~~~~~

Do not underestimate the potential for data lost to theft or accident. Those two factors account for 86% of notebook and 46% for desktop system data losses. For notebooks, theft counts for 50% alone.

Malware
~~~~~~~

Data loss due to viruses is less grave than common wisdom would have you believe. It accounts for less damage than theft or re-installations, for example. While malware used to be mostly limited to Microsoft OS, the frequency of attacks on Linux and Apple systems has grown.

Human and Data Loss
~~~~~~~~~~~~~~~~~~~

Human error, as in everything, is a major problem in data loss. People do really stupid things. Experienced users will pull the wrong drive from a `RAID <https://en.wikipedia.org/wiki/RAID>`_ array or reformat a drive, destroying all their information. Acting without thinking is dangerous to your data.

When something goes wrong, take a deep breath and don't panic. The best approach is to make a plan before doing taking any action that can cause significant data loss. Then sit down and explain your plan to a layman or even better, a laywoman. You will be amazed how many stupid errors can be avoided by simply making a plan and explaining it to someone else.

If your disk starts to make weird noises, normal file recovery software isn’t going to help. Do a quick backup. If the drive is still spinning and you can’t find your data, look for a data recovery utility and backup to another computer or drive. A universal and powerful solution can be to use `CloneZilla open-source suite <https://en.wikipedia.org/wiki/Clonezilla>`_. The important thing is to download your data onto another drive, either on another computer, or onto a USB thumb drive or hard disk. It is then always good practice to save the recovered data to another disk. `dd tool <https://en.wikipedia.org/wiki/Dd_(Unix)>`_ is your friend on Linux systems.


Common Myths Dispelled
~~~~~~~~~~~~~~~~~~~~~~

We would like to dispel some common myths:

    - Open Source file systems are less prone to data loss than proprietary systems: Wrong, NTFS is rather a tiny notch better than ext4, ReiserFs, JFS, XFS, to name just the most popular file systems that often come as default disk storage format used by distributions.

    - Journaled file systems prevent data corruption/loss: Wrong, they only speed up the scan process in case of a sudden interrupt during an operation and prevent ambiguous states. But if a file was not entirely saved before the mishap, it'll be lost.

    - `RAID <https://en.wikipedia.org/wiki/RAID>`_ systems prevent data corruption/loss: Mostly wrong, **RAID 0** stripes data with no redundancy, so it actually makes you more prone to data loss. **RAID 1** writes mirrored data, so it prevents data loss due to a single disk read failure, but not other failures. **RAID 5** can also prevent data loss due to disk-failures, but not from file system or RAID controller errors. Many low-end RAID controllers (like most mother board controllers) don’t report problems, figuring you’ll never notice. If you do notice, months later, what is the chance that you’ll know it was the controller’s fault? One insidious problem is corruption of **RAID 5** parity data. It is pretty simple to check a file by reading it and matching the metadata. Checking parity data is much more difficult, so you typically won’t see parity errors until a rebuild. Then, of course, it is too late.

    - Viruses are the biggest threat to digital data: Wrong. Theft, and human errors are the primary cause of data loss.

Storage Volume Estimation
-------------------------

Digital camera sensors are 1-2 aperture stops away from the fundamental physical limitations of sensing light. What we mean is this: as technology evolves, there is a natural limit to its progress. Sensitivity and noise characteristics for any kind of light sensor are not far from that limit.

Today's cameras tend towards 50 megapixels sensors, although this resolution is not necessarily apparent in the end result. Given the sensor size and quality of optics, 12 megapixels are optimum for compact cameras. Even DSLR cameras run into their limits at 20-24 megapixels. For higher resolutions, one has to go to full frame sensors (24x36mm) or even bigger formats.

So, taking into account the manufacturer propaganda regarding megapixels, it seems safe to say that the bulk of future cameras will support less than 30 megapixels. This provides a basis for estimating the storage space required for each future photograph: <40 MB per image. Even if file versioning is introduced (grouping of variations of a photograph under one file reference), the trend is to record just the instructions used to produce the new version, so only a small amount of data needs to be recorded, instead of a whole copy of the data, for each version of the image.

In order to estimate the amount of storage space you have to plan for, simply determine the number of photographs you take per year (easy with :ref:`digiKam's timeline sidebar tab <timeline_view>`) and multiply it by 40 MB. Most users will keep less than 2000 pictures per year which requires less than 80 GB/year. Assuming that you will change your hard disk (or whatever media in the future) every 4-5 years, the natural increase in storage capacity should suffice to keep you ahead of your storage requirements.

Those ambitious photographers out there who will need more space, maybe much more, should consider buying a file server. Giga-Ethernet comes integrated into motherboards today and file transfer over a local network can be blazingly fast. And if you don't need that much data, you should consider modern motherboards with support for fast SSDs. A few terabytes of fast SSD connected via a Thunderbolt 5 connection can make your image library fly.

Backup and Recovery
-------------------

6% of all PCs will suffer an episode of data loss in any given year. You have been warned, so you will have no one else to blame when a storage failure happens to you. Multi-terabyte HDDs and SSDs are not very expensive. Buy one and use it to backup your data often according to a plan. Even better, you should back up your data and *test the backup* before you do anything dramatic like re-installing your OS, changing disks, resizing partitions and so on.

Disaster Prevention
~~~~~~~~~~~~~~~~~~~

Say you religiously do your backups every day on an external SATA drive. Then comes the day when lightning strikes. Happy you, unless of course you are like most people and always keep you external drives connected to your computer.

Disasters that strike locally can destroy a lot all at once. Forget about airplane crashes: fire, water, electricity, kids and theft are dangerous enough to our data. Home disasters often destroy a whole room or even the whole house.

Thus disaster control means de-localized storage. Occasionally switch backups, moving one upstairs, to another house, or even to your place of work.

There is another good reason to physically separate your backups. As mentioned above, panic often leads to mistakes that destroy data, even the backup data. Keeping a backup remote may give you enough time to think and therefore avoid a stupid mistake.

Backup Technicalities
~~~~~~~~~~~~~~~~~~~~~

    - **Full Backup**: A complete backup of all the files being backed up. It is a snapshot without history, representing a full copy of your data at one point in time.

    - **Differential Backup**: A backup of only the files that have changed since the last full backup. Constitutes a full snapshot of two points in time: the full backup and the last differential one.

    - **Incremental Backup**: A backup of only the files that have changed since the last in a set of backups. Constitutes multiple snapshots. You can recreate the original state at any point in time that such a backup was made. This comes closest to a versioning system except that it is only sampled and not continuous.

Backup The Data
~~~~~~~~~~~~~~~

The Best practice to backup data is:

    - Do a **full backup** to an external storage device.

    - Verify its **data integrity** and put it away (disaster control).

    - Have another storage device for **frequent backups**.

    - **Swap the devices** every other month after having verified data integrity.

A Useful Tool to Backups
~~~~~~~~~~~~~~~~~~~~~~~~

Linux `rsync <https://en.wikipedia.org/wiki/Rsync>`_ is a wonderful little utility that's amazingly easy to set up on your machines. Rather than have a scripted FTP session, or some other form of file transfer script - rsync copies only the differences of files that have actually changed, compressed and through ssh if you want for security. That's a mouthful.

A reasonable backup approach for images could be:

    - Backup important images right away (after dumping them to a computer) to optical media.

    - Do a daily incremental backup of the work space.

    - Do a weekly differential backup and delete integral backups of week-2 (two weeks ago).

    - Do a monthly differential backup and delete backup of month-2.

    - If backup media are not already physically separated, separate it now (swapping-in another backup drive).

This protocol tries to leave you enough time to spot losses and to recover fully if needed, while at the same time keeping the backup volume at <130% of the working space. You end up with a daily version of the last 7-14 days, a weekly snapshot for at least one month, and a snapshot every month. Any more thinning should be done by hand after a full verification.


You should also consider steps to preserve your images through any changes in technology and ownership.

In order for your valuable images to **survive one or two generations to the next** there are two strategies to be observed:

    - **Keep up with technology**, don't lag behind more than a couple of years.

    - Save your photos in an open, **non-proprietary standard**.

Keep Up With Technology
-----------------------

While the future is fundamentally unforeseeable, technological progress seems certain to continue. Every 5-8 years you should be considering the question of backwards compatibility of current systems. The fewer variants we use in the past, the fewer questions that will need to be answered in the future.

Of course, every time you change your computer system (machine, operating system, applications, DRM) you have to ask yourself the same questions. Today, if you want to switch to Windows, you have to ask yourself three times if you still can import your pictures, and, more importantly, if you will ever again be able to move them onto some other system or machine. If you get tied into a proprietary systems, then chances are good that you cannot. We see many people struggling because Windows enforces a strict DRM regime. How can you prove to Windows that you are actually the owner of your pictures copyright?

The solution to this problem is to only use open standards that are supported by multiple applications.

Virtualization is now widely available for everybody. So if you have an old system that is important for reading your images, keep it, so you can later install it as a virtual machine.

Otherwise the advice is quite simple: every time you change your computer architecture, your storage and backup technology, or your file format - go through your library and convert to a newer standard if necessary. And keep to open standards.

Scalability
~~~~~~~~~~~

Scalability is the tech-geek expression for the capability of a system to be resized, which always means up-sized.

Let's assume you planned for scalability and stored your image collection in a container you want to increase to a separate disk or partition. On a Linux system you then can copy and resize the container to the new disk.

.. _dam_fileformats:

Use Open File Formats
~~~~~~~~~~~~~~~~~~~~~

The short history of the digital era in the past 20 years has proven over and over again that proprietary formats are not the way to go when you want your data to be intelligible 10 years into the future. Microsoft is the most well-known purveyor of proprietary formats because of its domineering market share. But other companies may be worse since they may not stay in the market long enough or only have a small base of users or contributors. In the case of Microsoft one at least has the advantage of many people sharing the same problems. This makes it far more likely that you might find a solution to a problem involving their proprietary formats. Yet it is still common that any version of the MSoffice suite cannot properly read a document created with the same application two major versions earlier.

Luckily, image formats typically have had a longer life time than office documents and are a bit less affected by obsolescence.

Open Source standards have the huge advantage of having an open specification. Even if one day in the future there is no software to read a particular file format, someone can recreate such software based only on the specification.

.. figure:: images/dam_editor_save_settings.webp
    :alt:
    :align: center

    digiKam Image Editor Default Save Settings for Common Image Formats

**JPEG** has been around for a while now. It's a lossy format that loses a bit every time you make and save a modified version of the original. On the positive side, the JPEG format is ubiquitous, supports JFIF, Exif, IPTC and XMP metadata, has good compression ratios and can be read by all imaging software. Because of its metadata limitations, lossy nature, absence of transparency and 8-bit color channel depth, we do not recommend it. JPEG2000 is better, can be employed lossless, but suffers from a smaller user base.

**GIF** is a proprietary, patented format that is slowly disappearing from the market. Don't use it.

**PNG** was invented as an Open Source standard to replace GIF, but it does much more. It is lossless, supports XMP, Exif and IPTC metadata, has 16-bit color encoding and full transparency. PNG can store gamma and chromaticity data for improved color matching on heterogeneous platforms. Its drawback are relatively big file sizes (but smaller than TIFF) and slow compression. We recommend it.

**TIFF** has been widely accepted as an image format. TIFF can exist in uncompressed form or in a container using a lossless compression algorithm (Deflate). It maintains high image quality but at the expense of much larger file sizes. Some cameras let you save your images in this format. The problem is that the format has been altered by so many people that there are now 50 or more flavors and not all are recognizable by all applications.

**PGF** for Progressive Graphics File is another not so well known but open file image format. Wavelet-based, it allows lossless and lossy data compression. PGF compares well with **JPEG 2000** but it was developed for compression/decompression speed rather than compression ratio. A PGF file looks significantly better than a JPEG file of the same file size, while also remaining very good at progressive display. PGF format is used internally in digiKam to store compressed thumbnails in the database. For more information about the PGF format see the `libPGF homepage <https://libpgf.org/>`_

.. figure:: images/dam_raw_import.webp
    :alt:
    :align: center

    digiKam Image Editor Raw Import Tool

**RAW** format. Some more expensive cameras support shooting in a RAW format. The RAW format is not really an image standard at all, it is a container format which is different for every brand and camera model. RAW format images contain minimally processed data from the image sensor of a digital camera or image scanner. Raw image files are sometimes called digital negatives, as they fulfill the same role as film negatives in traditional chemical photography. Specifically, the negative is not directly usable as an image, but has all of the information needed to create an image. Storing photographs in a camera's RAW format provides for higher dynamic range and allows you to alter settings, such as white balance, after the photograph has been taken. Most professional photographers use RAW format, because it offers them maximum flexibility. The downside is that RAW image files can be very large indeed.

We recommend that you **abstain from archiving in RAW format** (as opposed to shooting in RAW format, which we do recommend). There is nothing good about storing images in a native RAW format. They come in many varieties and all are proprietary. It is also quite likely that in a few years time you won't be able to use your old RAW files anymore. We have already seen people changing cameras, losing their color profiles and having great difficulty in correctly working with their old RAW files. We suggest that you instead change to DNG format.

**DNG** or Digital Negative file format is a royalty free and open RAW image format originally designed by Adobe Systems. DNG was a response to the demand for a unifying camera raw file format. It is based on the TIFF/EP format, and mandates use of metadata. A handful of camera manufacturers have already adopted DNG. Let's hope that the main holdouts (Canon and Nikon) will also adopt it one day. The `Apple ProRAW <https://support.apple.com/en-us/HT211965>`_ format available since the iPhone 12 Pro Max is based on DNG.

.. figure:: images/dam_dng_converter_bqm.webp
    :alt:
    :align: center

    digiKam Provide a Tool to Convert in Batch RAW to DNG in :ref:`Batch Queue Manager <dng_converter>`

We strongly recommend converting RAW files to DNG for archiving. Despite the fact that DNG was created by Adobe, it is an open standard and widely embraced by the Open Source community (which is usually a good indicator of a format's longevity). Some manufacturers have already adopted DNG as RAW format. And last but not least, Adobe is the most important source of graphical software today, and they of course support their own invention. It is an ideal archival format with the raw sensor data preserved as such in TIFF format inside the DNG, allieviating the risk associated with proprietary RAW formats. All of this makes migration to another operating system a no-brainer.

.. figure:: images/dam_dng_converter_import.webp
    :alt:
    :align: center

    digiKam Provide Tools to Convert RAW to DNG during :ref:`Download from Camera <camera_dngconvert>`

**XML** for Extensible Mark-up Language or **RDF** for Resource Description Framework. XML is like HTML, but where HTML is mostly concerned with the presentation of data, XML is concerned with the *representation* of data. On top of that, XML is non-proprietary, operating-system-independent, fairly simple to interpret, text-based and cheap. RDF is the WC3's solution to integrate a variety of different applications such as library catalogs, world-wide directories, news feeds, software, as well as collections of music, images, and events using XML as an interchange syntax. Together the specifications provide a method that uses a lightweight ontology based on the Dublin Core which also supports the "Semantic Web" (easy exchange of knowledge on the Web).

IPTC Goes XMP
~~~~~~~~~~~~~

That's probably one of the reasons why, around 2001, that Adobe introduced its XML based XMP technology to replace the *Image Resource Block* technology of the nineties. XMP stands for **Extensible Metadata Platform**, a mixture of XML and RDF. It is a labeling technology that lets users embed data about a file in the file itself. The file information is saved using the extension :file:`*.xmp*` (signifying the use of XML/RDF).

`XMP <https://en.wikipedia.org/wiki/Extensible_Metadata_Platform>`_: As much as ODF will be readable forever (since the text it contains is written in clear text), XMP will preserve your metadata in a clearly understandable XML format. No danger here of not being able to read it later. It can be embedded into the image files or as a separate accompanying file, that Adobe calls a **Sidecar** file. XMP can be used in PDF, JPEG, JPEG2000, GIF, PNG, HTML, TIFF, Adobe Illustrator, PSD, Postscript, Encapsulated Postscript, and video files. In JPEG files, XMP information is typically included alongside Exif and IPTC data.

.. figure:: images/dam_xmp_viewer.webp
    :alt:
    :align: center

    digiKam can Display XMP Contents from Image and Video

Embedding metadata directly in the image files allows easy sharing and transfer of files across products, vendors, platforms, customers, without metadata getting lost. The most common metadata tags recorded in XMP data are those from the Dublin Core Metadata Initiative, which include things like title, description, creator, and so on. The standard is designed to be extensible, allowing users to add their own custom types of metadata into the XMP data. XMP generally does not allow binary data types to be embedded. This means that any binary data one wants to carry in XMP, such as thumbnail images, must be encoded in some XML-friendly format, such as Base-64.

Many photographers prefer keeping an original of their shots (mostly RAW) for the archive. XMP suits that approach as it keeps metadata separate from the image file. We do not share this point of view. There could be problems linking metadata file and image file, and as said above, RAW formats will become obsolete. We recommend using DNG as a container and putting everything inside the single file.

The `Dublin Core Metadata Initiative <https://www.dublincore.org/>`_ is an open organization engaged in the development of interoperable online metadata standards that support a broad range of purposes and business models. DCMI's activities include work on architecture and modeling, discussions and collaborative work in DCMI Communities and DCMI Task Groups, annual conferences and workshops, standards liaison, and educational efforts to promote widespread acceptance of metadata standards and practices.

.. figure:: images/dam_metadata_sidecars.webp
    :alt:
    :align: center

    digiKam Support Sidecar Files with many Options from Settings Panel

Protect Your Data
-----------------

    - Use surge protectors (UL 1449 standard), possibly combined with a UPS.

    - Use ECC memory to correct memory errors (even when just saving files).

    - Watch your hard drives (temperature, noise...), make backups.

    - Keep backups at another location, locked up, use web storage space.

    - Use archival media and burners.

    - Don't panic in case of data loss, explain your recovery plan to a layperson.

    - Choose your file system, partitions, folders for easy scalability.

    - Use open, non-proprietary standards to manage and save photographs.

    - Do a technology/migration review at least every 5 years.
