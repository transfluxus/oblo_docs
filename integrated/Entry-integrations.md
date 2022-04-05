# Entry integration

entry integrations are parts that are included
into entries by the template or the domain the entry belongs to
or the NO_DOMAIN domain (platform domain).

It can also include rules e.g. what the status of new entry
should be.  (for process_entry_post)

## requires_review
merge the dicts from NO_DOMAIN, entry.domain and entry.template.rules.requires_review
in that order (so template rules override domain rules). If any condition is met
the entry is marked as requires_review.

e.g. visitors entries are not reviewed by default.

```
domain:
  entry:
    create:
     required_review a dict of rules.
        e.g. : {
          "actor.role": ["visitor"]
        }
    after_create:
```