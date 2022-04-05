# Languages and translation

There are 4 major elements that can translated independently:

**Frontend messages**
:   These contain all the basic texts on application, including menus buttons and other basic (
content independent) texts.

**Backend messages**
:   Frontend messages contain all the messages that the server can respond as a feedback to a user action.

**Domains**
:   These are the different parts of the application, like the different pages, the different components, etc.

**Entries**
:  These are the different texts that are used in the application.

!!! info "Language codes"
Currently Oblo uses [639-1 language codes](https://en.wikipedia.org/wiki/ISO_639-1) for managing languages.

## Default platform language

The default platform language is defined in the environment variable `DEFAULT_LANGUAGE`. In general when a user visit
the page without declaring a language in the query parameter `lang` (e.g. `https://oblo-example.com/?lang=es`)
The default language is used.

## Frontend and backend messages

The frontend and backend messages are stored in a sqlite database **messages database**, which is located at
`<BASE_DATA_FOLDER>/<LANGUAGE_SQLITE_FILE_PATH>` (default: `data/messages.sqlite`).

When the environment variable `INIT_LANGUAGE_TABLES` is set to `true` (or when the **messages database** does not exist)
, the database is initialized with data coming from 2 csv files: `<BASE_DATA_FOLDER>/init_data/languages/fe.csv` (
and `be.csv` respectively). When `REPLACE_MESSAGES` is to `true` it will overwrite the existing messages in the
database, if they differ from those in the csv files.

The **messages database** has 5 tables:

* fe: frontend messages
* be: backend messages
* changes: storing changes in fe and be
* languages: language code and names (in english!)
* status: stores general information about the message tables (including if they are active - selectable by the user)

!!! languages "Languages table"
    The language table is filled by the file `<BASE_DATA_FOLDER>/init_data/languages/languages.csv` (
    default: `data/languages/languages.csv`).

!!! info "Language names in *all* languages"
    Oblo uses the repository `LANGUAGE_LIST_SOURCE_REPO_URL` (currently `https://github.com/umpirsky/language-list`), which
    is downloaded when its missing on startup. The repo contains the names of many languages in many languages. Through that, when 
    a new language is added, its name is added to the `fe` table in all other languages of the platform. Respectively, 
    it adds the names of all platform languages in the new language.