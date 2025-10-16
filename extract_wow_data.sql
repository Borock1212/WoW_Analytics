-- Data Extraction (BigQuery)

-- I used SQL queries with `UNNEST` to handle nested arrays (e.g., `runs` and `members` tables).
-- Example:
-- ```sql
CREATE OR REPLACE TABLE `imposing-medium-475102-u0.WoW_DATA.tww_1_season_2000_filtered` AS 
SELECT
  _page,
  _season,
  _region,

  run.completed_at      AS completed_at,
  run.keystone_time_ms  AS max_time_for_run_ms,
  run.clear_time_ms     AS running_time_ms,
  modifier.name         AS affix_name,
  run.keystone_run_id   AS run_id,
  run.dungeon.name      AS dungeon_name,
  score                 AS score,
  rank                  AS rank,        

  r.role                AS role,
  r.isBanned            AS isBanned,
  r.isTransfer          AS isTransfer,
  r.character.id        AS character_id,
  r.character.name      AS character_name,
  r.character.faction   AS character_faction,
  r.character.level     AS character_level,
  r.character.realm.name AS realm_name,
  r.character.realm.locale AS realm_location,
  r.character.region.short_name AS region_short_name,
  r.character.spec.name AS character_specialization, 
  r.character.class.name AS class_name

FROM `imposing-medium-475102-u0.WoW_DATA.tww_1_season_2000`,
UNNEST(run.roster) AS r,
UNNEST(run.weekly_modifiers) AS modifier;
