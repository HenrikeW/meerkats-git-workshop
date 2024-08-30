This directory contains:

* Database migration files.

  Database migration files are plain text files containing SQL
  statements that manipulate the database before the application starts.
  Each file must have a name on the form "NNNN-info-string.sql" where
  "NNNN" is a zero-filled sequence number, and "info-string" is a terse
  label for the specific migration (e.g. "0010-add-user-email-field.sql"
  or "0011-delete-bad-email-addresses.sql").

* Initial database dump.

  If the database is missing in the Docker volume, it will be
  initialized from a database dump called "init.sql" before the
  migrations are applied, if such a file exists.
