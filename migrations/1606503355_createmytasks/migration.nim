include normanpkg/prelude

import todo/db_backend

migrate:
  withDb:
    db.transaction:
      let qry = """
        create table if not exists "my_tasks"(
          id INTEGER NOT NULL PRIMARY KEY,
          description text not null,
          assignee text not null
        );
      """

      debug qry
      db.exec sql qry

undo:
  withDb:
    db.transaction:
      let qry = """
        drop table if exists "my_tasks";
      """

      debug qry
      db.exec sql qry
