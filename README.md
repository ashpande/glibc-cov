# glibc-cov
Repository to store the work of Glibc-coverage project for ELISA under communitybridge.



ISO 26262, requires the measurement of structural coverage (=code coverage) and explains the importance of this method for the development of safety-related SW.

There are commercial and open-source tools that measure code coverage for user space application and for the Linux kernel but an important part is missing – code coverage for GLibC. This is a crucial gap for a safety case of Linux because many of the kernel’s core services (memory management, thread management, locking) are implemented in GLibC with complex code.

Currently building glibc with gcc and code coverage instrumentation is not possible. The last reference on the internet to this problem is from seven years ago (https://libc-help.sourceware.narkive.com/WT9CfAx8/glibc-build-with-gcov-support).

The aim of this project is to find a way to perform code coverage (C0, C1 and C2) on GlibC.

The main work involves investigating the behaviour of GCoV. That is stored in the continous work log which can be accessed here: https://docs.google.com/document/d/1A6JVEBPPd3SonruODtZg6QA5zfMymNT-VkubBccRNN4/edit?usp=sharing
