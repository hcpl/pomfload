========
pomfload
========

.. image:: https://travis-ci.org/hcpl/pomfload.svg
    :target: https://travis-ci.org/hcpl/pomfload

.. code-block::

    Usage: pomfload [-u|-f|-p] [-t|-S SUFFIX] [-s SITE]... FILE...

    Options:
      -h                Show this help message and exit

      -s SITE           Specify the site name to upload, can be used
                        multiple times to upload to multiple sites
                        (default sites: yiff.moe)
      -S SUFFIX         Upload as files with the specified SUFFIX
      -t                Upload as text files (equivalent to -S txt)

      -u                Output URL
      -f                Output filename only
      -p                Output the same way as the server responses

      -v                Increase verbosity, can be specified multiple times
      -q                Decrease verbosity, can be specified multiple times

    Supported sites:
      * aww.moe (alias: aww)
      * catbox.moe (alias: catbox)
      * comfy.moe (alias: comfy)
      * desu.sh (alias: desu)
      * fuwa.se (alias: fuwa)
      * g.zxq.co (aliases: gzxq, zxq)
      * glop.me (alias: glop)
      * jii.moe (alias: jii)
      * maro.xyz (alias: maro)
      * mixtape.moe (alias: mixtape)
      * p.fuwafuwa.moe (alias: fuwafuwa)
      * pomf.cat
      * pomf.pyonpyon.moe (alias: pyonpyon)
      * pomfe.co (alias: pomfe)
      * uguu.se
      * up.asis.io (aliases: upasis, asis)
      * vidga.me (alias: vidga)
      * yiff.moe (alias: yiff) (default)


Requirements
------------

* POSIX-compatible shell
* Packages wth essential Unix tools, such as |coreutils|_, |sed| or
  their alternatives.
* |curl|_
* |jq|_ (``pomfload`` is compatible with jq 1.3 and above)

.. |coreutils| replace:: ``coreutils``
.. _coreutils: https://gnu.org/s/coreutils
.. |sed| replace:: ``sed``
.. |curl| replace:: ``curl``
.. _curl: https://curl.haxx.se/
.. |jq| replace:: ``jq``
.. _jq: https://stedolan.github.io/jq/


Installation
------------

``pomfload`` is a standalone script, so downloading a single file is
enough for usage:

.. code-block:: sh

    # Short link
    curl -o pomfload git.io/vX7Wd

    # Exact location (these two links point to the same file)
    curl -O https://raw.githubusercontent.com/hcpl/pomfload/master/pomfload

After that give the script execute permissions and place it somewhere
in your ``$PATH``.


Customization
-------------

If you want to have your set of available sites, clone the whole repo,
add or remove sites in ``sites.json`` and then execute:

.. code-block::

    ./generate-script > pomfload

That's all! *(at least, it should be that easy)*


How to Contribute
-----------------

Notes for ``sites.json``:

* Give some reasonable aliases (often one alias is sufficient).
* And make sure it can actually download (of course :) ).

Patches, suggestions and comments are welcome!


Credits
-------

* `Shizmob <https://github.com/Shizmob>`_'s `original pomfload <https://gist.github.com/Shizmob/7984374>`_
