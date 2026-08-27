# Optional initial database dump.

If the database is missing in the Docker volume, it will be initialized
from a database dump called `init.sql` before the migrations are
applied, if such a file exists in this directory.
