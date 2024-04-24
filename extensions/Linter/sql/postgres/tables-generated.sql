-- This file is automatically generated using maintenance/generateSchemaSql.php.
-- Source: tables.json
-- Do not modify this file directly.
-- See https://www.mediawiki.org/wiki/Manual:Schema_changes
CREATE TABLE linter (
  linter_id SERIAL NOT NULL,
  linter_page INT NOT NULL,
  linter_namespace INT DEFAULT NULL,
  linter_cat INT NOT NULL,
  linter_start INT NOT NULL,
  linter_end INT NOT NULL,
  linter_params TEXT NOT NULL,
  linter_template TEXT DEFAULT '' NOT NULL,
  linter_tag TEXT DEFAULT '' NOT NULL,
  PRIMARY KEY(linter_id)
);

CREATE INDEX linter_page ON linter (linter_page);

CREATE INDEX linter_cat_namespace ON linter (linter_cat, linter_namespace);

CREATE UNIQUE INDEX linter_cat_page_position ON linter (
  linter_cat, linter_page, linter_start,
  linter_end
);

CREATE INDEX linter_cat_template ON linter (linter_cat, linter_template);

CREATE INDEX linter_cat_tag ON linter (linter_cat, linter_tag);