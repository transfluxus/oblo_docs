# Domain

Domains are the most fundamental parts in a data collection system on Oblo. They serve as entry points to a collection
project, with its specific surveys, tags and map settings and unique configurations and plugins.

Domains can be provided in various languages and each domain can have its own default language.

!!! warning "Loading and updating domains"
    Currently, domains cannot be loaded or updated during runtime, but only during application start (given that the environment variable: `INIT_DOMAINS`
    is set). The domains are read from the folder `<BASE_DATA_FOLDER>/init_data/<INIT_DOMAINS_SUBPATH>`,
    where `<BASE_DATA_FOLDER>` and `<INIT_DOMAINS_SUBPATH>` are environment variables by default set to `data` and `domains`
    .Updates to the wording (the translatable part of domain can be done during runtime. See )

This is the folder structure a domain has:

![](/assets/folder_structure1.png)

[//]: # ( Path: docs/pages/concepts/domain.md

Domains are stored in the two different tables: domain_meta and domain. domain_meta hold the following fields:

* name: a unique name (str)
* content: the language unspecific data of the domain (json)
* index: the index in the list, when they are returned sorted (int)
* is_active: if the domain should be returned during normal requests (bool)
* default_language: the default language of the domain, code/template entries should be of this language first (str)

domain has the following fields:

A domain Object contains the full domain data in specific languages. Domain objects are unique for the tuple of the
domain_meta (a ForeignKey to a domain_meta object) and their language.

* title: the title of the domain in the given language (str)
* language: the language of this domain object (and its content) (str)
* content: the full data of the domain (str)
* is_active: if the domain data is available in this language (bool)

