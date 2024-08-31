# Database migration files.

Database migration files are plain text files containing SQL statements
that manipulate the database before the application starts.  Each file
must have a name on the form `NNNN-info-string.sql` where `NNNN` is a
zero-filled 4-digit sequence number, and `info-string` is a terse label
for the specific migration (e.g. `0010-add-user-email-field.sql` or
`0011-delete-bad-email-addresses.sql`).

As example of very simple migrations, see the `0001` and `0002`
migration.  The `0000` migration is special, as it adds the `migration`
table to the database.
