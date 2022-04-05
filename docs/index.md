nav:
folders: 'folders/controller.md'

# Oblo documentation

This is the documentation for the Oblo platform. Oblo is a participatory data collection framework for the web and
mobile for geo-localized data like in typical citizen science application. It's focus is on language flexibility and
social science type surveys.

## Features

- Domains: Project like areas for groups of surveys of one topic or community
- Generic surveys (templates): Questionaires with diverse types of question types (text, number, selects, locations,
  images, ...)
- Translation functionality for individual domains and surveys: Domains and surveys can be translated individually. This
  allows to collect data of one survey in multiple languages and at the same time allowing language independent data
  analysis. Translation can be made on Oblo itself.
- Flexible privacy and licenses per entry: User can define the privacy level and license (creative-commons) for each
  entry they make.
- Global roles: Editors and admins can administer data on respective domains/languages (e.g. reviewing entries, that are
  labeled to require review. or require review because of incomplete data)
- Login with SciStarter, INaturalist or ORCiD (or other OAuth providers)
- Easily extensible with domain plugins
- Entry tags, allow better filtering of entries based on their data


## Initialization

Read the backend [README](pages/setup.md) to get started

## The Frontend

The frontend (oblo-frontend) is statically generated web-application ([see the repo here](https://github.com/Oblo-cit-sci/Oblo-frontend)) which also served by the backend. Thus
the generated folder should also be in the application folder


## Languages

Oblo can work in any languages supported by utf-8 (currently the frontend has only been designed for LTR languages). The
i18n messages of the frontend and the backend are stored in sqlite database, which is generated during the first
startup. Initially the messages are read from 2 csv files, which should be in init_data/languages and respectively
called fe.csv and be.csv.

As a source of language names of all language

contained languages currently are:
English, spanish and catalan.

## Domains and template-entries

Domains, template and code-entries provide the fundamental structure of the platform and its surveys.
Domains can be thought of as project, which contain surveys of specific topic or community.
[Read more details on domains here.](pages/concepts/domain.md)

## Repository structure

A general structure of the repository:

[Controller](pages/structure/controller.md)