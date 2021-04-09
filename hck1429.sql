-- DDL
ALTER TABLE public.test
	ADD created_time timestamptz NOT NULL DEFAULT now(),
	ADD created_by int8 NOT NULL DEFAULT 0,
	ADD updated_time timestamptz NULL,
	ADD updated_by int8 NULL;

ALTER TABLE public.test
	DROP COLUMN IF EXISTS created_time,
	DROP COLUMN IF EXISTS created_by,
	DROP COLUMN IF EXISTS updated_time,
	DROP COLUMN IF EXISTS updated_by;

-- Indexing
CREATE INDEX CONCURRENTLY test_created_time_idx ON public.test USING btree (created_time);
CREATE INDEX CONCURRENTLY test_updated_time_idx ON public.test USING btree (updated_time);

DROP INDEX CONCURRENTLY IF EXISTS test_created_time_idx;
DROP INDEX CONCURRENTLY IF EXISTS test_updated_time_idx;

-- https://tokopedia.atlassian.net/browse/DDAR-1411


-- DDL
-- Code Up
-- unique_identifier
ALTER TABLE public.unique_identifier
	ADD created_by int8 NOT NULL DEFAULT 0,
	ADD updated_at timestamptz NULL,
	ADD updated_by int8 NULL;
-- card_template
ALTER TABLE public.card_template
	ADD created_time timestamptz NOT NULL DEFAULT now(),
	ADD created_by int8 NOT NULL DEFAULT 0,
	ADD updated_time timestamptz NULL,
	ADD updated_by int8 NULL;
-- shop
ALTER TABLE public.shop
	ADD created_time timestamptz NOT NULL DEFAULT now(),
	ADD created_by int8 NOT NULL DEFAULT 0,
	ADD updated_time timestamptz NULL,
	ADD updated_by int8 NULL;
-- program_attribute
ALTER TABLE public.program_attribute
	ADD created_time timestamptz NOT NULL DEFAULT now(),
	ADD created_by int8 NOT NULL DEFAULT 0,
	ADD updated_time timestamptz NULL,
	ADD updated_by int8 NULL;
-- time_window
ALTER TABLE public.time_window
	ADD created_time timestamptz NOT NULL DEFAULT now(),
	ADD created_by int8 NOT NULL DEFAULT 0,
	ADD updated_time timestamptz NULL,
	ADD updated_by int8 NULL;
-- user_card
ALTER TABLE public.user_card
	ADD created_time timestamptz NOT NULL DEFAULT now(),
	ADD created_by int8 NOT NULL DEFAULT 0,
	ADD updated_time timestamptz NULL,
	ADD updated_by int8 NULL;
-- event_log
ALTER TABLE public.event_log
	ADD created_time timestamptz NOT NULL DEFAULT now(),
	ADD created_by int8 NOT NULL DEFAULT 0,
	ADD updated_time timestamptz NULL,
	ADD updated_by int8 NULL;
-- program
ALTER TABLE public.program
	ADD created_time timestamptz NOT NULL DEFAULT now(),
	ADD created_by int8 NOT NULL DEFAULT 0,
	ADD updated_time timestamptz NULL,
	ADD updated_by int8 NULL;
-- quota_rules
ALTER TABLE public.quota_rules
	ADD created_time timestamptz NOT NULL DEFAULT now(),
	ADD created_by int8 NOT NULL DEFAULT 0,
	ADD updated_time timestamptz NULL,
	ADD updated_by int8 NULL;
-- card
ALTER TABLE public.card
	ADD created_time timestamptz NOT NULL DEFAULT now(),
	ADD created_by int8 NOT NULL DEFAULT 0,
	ADD updated_time timestamptz NULL,
	ADD updated_by int8 NULL;
-- program_progress
ALTER TABLE public.program_progress
	ADD created_by int8 NOT NULL DEFAULT 0,
	ADD updated_by int8 NULL;

-- Code Down
-- unique_identifier
ALTER TABLE public.unique_identifier
	DROP COLUMN IF EXISTS created_by,
	DROP COLUMN IF EXISTS updated_at,
	DROP COLUMN IF EXISTS updated_by;
-- card_template
ALTER TABLE public.card_template
	DROP COLUMN IF EXISTS created_time,
	DROP COLUMN IF EXISTS created_by,
	DROP COLUMN IF EXISTS updated_time,
	DROP COLUMN IF EXISTS updated_by;
-- shop
ALTER TABLE public.shop
	DROP COLUMN IF EXISTS created_time,
	DROP COLUMN IF EXISTS created_by,
	DROP COLUMN IF EXISTS updated_time,
	DROP COLUMN IF EXISTS updated_by;
-- program_attribute
ALTER TABLE public.program_attribute
	DROP COLUMN IF EXISTS created_time,
	DROP COLUMN IF EXISTS created_by,
	DROP COLUMN IF EXISTS updated_time,
	DROP COLUMN IF EXISTS updated_by;
-- time_window
ALTER TABLE public.time_window
	DROP COLUMN IF EXISTS created_time,
	DROP COLUMN IF EXISTS created_by,
	DROP COLUMN IF EXISTS updated_time,
	DROP COLUMN IF EXISTS updated_by;
-- user_card
ALTER TABLE public.user_card
	DROP COLUMN IF EXISTS created_time,
	DROP COLUMN IF EXISTS created_by,
	DROP COLUMN IF EXISTS updated_time,
	DROP COLUMN IF EXISTS updated_by;
-- event_log
ALTER TABLE public.event_log
	DROP COLUMN IF EXISTS created_time,
	DROP COLUMN IF EXISTS created_by,
	DROP COLUMN IF EXISTS updated_time,
	DROP COLUMN IF EXISTS updated_by;
-- program
ALTER TABLE public.program
	DROP COLUMN IF EXISTS created_time,
	DROP COLUMN IF EXISTS created_by,
	DROP COLUMN IF EXISTS updated_time,
	DROP COLUMN IF EXISTS updated_by;
-- quota_rules
ALTER TABLE public.quota_rules
	DROP COLUMN IF EXISTS created_time,
	DROP COLUMN IF EXISTS created_by,
	DROP COLUMN IF EXISTS updated_time,
	DROP COLUMN IF EXISTS updated_by;
-- card
ALTER TABLE public.card
	DROP COLUMN IF EXISTS created_time,
	DROP COLUMN IF EXISTS created_by,
	DROP COLUMN IF EXISTS updated_time,
	DROP COLUMN IF EXISTS updated_by;
-- program_progress
ALTER TABLE public.program_progress
	DROP COLUMN IF EXISTS created_by,
	DROP COLUMN IF EXISTS updated_by;


-- Indexing
-- Code Up
-- unique_identifier ( created_at & updated_at )
CREATE INDEX CONCURRENTLY unique_identifier_created_at_idx ON public.unique_identifier USING btree (created_at);
CREATE INDEX CONCURRENTLY unique_identifier_updated_at_idx ON public.unique_identifier USING btree (updated_at);
-- card_template
CREATE INDEX CONCURRENTLY card_template_created_time_idx ON public.card_template USING btree (created_time);
CREATE INDEX CONCURRENTLY card_template_updated_time_idx ON public.card_template USING btree (updated_time);
-- shop
CREATE INDEX CONCURRENTLY shop_created_time_idx ON public.shop USING btree (created_time);
CREATE INDEX CONCURRENTLY shop_updated_time_idx ON public.shop USING btree (updated_time);
-- program_attribute
CREATE INDEX CONCURRENTLY program_attribute_created_time_idx ON public.program_attribute USING btree (created_time);
CREATE INDEX CONCURRENTLY program_attribute_updated_time_idx ON public.program_attribute USING btree (updated_time);
-- time_window
CREATE INDEX CONCURRENTLY time_window_created_time_idx ON public.time_window USING btree (created_time);
CREATE INDEX CONCURRENTLY time_window_updated_time_idx ON public.time_window USING btree (updated_time);
-- user_card
CREATE INDEX CONCURRENTLY user_card_created_time_idx ON public.user_card USING btree (created_time);
CREATE INDEX CONCURRENTLY user_card_updated_time_idx ON public.user_card USING btree (updated_time);
-- event_log
CREATE INDEX CONCURRENTLY event_log_created_time_idx ON public.event_log USING btree (created_time);
CREATE INDEX CONCURRENTLY event_log_updated_time_idx ON public.event_log USING btree (updated_time);
-- program
CREATE INDEX CONCURRENTLY program_created_time_idx ON public.program USING btree (created_time);
CREATE INDEX CONCURRENTLY program_updated_time_idx ON public.program USING btree (updated_time);
-- quota_rules
CREATE INDEX CONCURRENTLY quota_rules_created_time_idx ON public.quota_rules USING btree (created_time);
CREATE INDEX CONCURRENTLY quota_rules_updated_time_idx ON public.quota_rules USING btree (updated_time);
-- card
CREATE INDEX CONCURRENTLY card_created_time_idx ON public.card USING btree (created_time);
CREATE INDEX CONCURRENTLY card_updated_time_idx ON public.card USING btree (updated_time);
-- program_progress ( created_at & updated_at )
CREATE INDEX CONCURRENTLY program_progress_created_at_idx ON public.program_progress USING btree (created_at);
CREATE INDEX CONCURRENTLY program_progress_updated_at_idx ON public.program_progress USING btree (updated_at);
-- user_configuration ( created_at & updated_at )
CREATE INDEX CONCURRENTLY user_configuration_created_at_idx ON public.user_configuration USING btree (created_at);
CREATE INDEX CONCURRENTLY user_configuration_updated_at_idx ON public.user_configuration USING btree (updated_at);
-- invitation
CREATE INDEX CONCURRENTLY invitation_created_time_idx ON public.invitation USING btree (created_time);
CREATE INDEX CONCURRENTLY invitation_updated_time_idx ON public.invitation USING btree (updated_time);

-- Code Down
-- unique_identifier ( created_at & updated_at )
DROP INDEX CONCURRENTLY IF EXISTS unique_identifier_created_at_idx;
DROP INDEX CONCURRENTLY IF EXISTS unique_identifier_updated_at_idx;
-- card_template
DROP INDEX CONCURRENTLY IF EXISTS card_template_created_time_idx;
DROP INDEX CONCURRENTLY IF EXISTS card_template_updated_time_idx;
-- shop
DROP INDEX CONCURRENTLY IF EXISTS shop_created_time_idx;
DROP INDEX CONCURRENTLY IF EXISTS shop_updated_time_idx;
-- program_attribute
DROP INDEX CONCURRENTLY IF EXISTS program_attribute_created_time_idx;
DROP INDEX CONCURRENTLY IF EXISTS program_attribute_updated_time_idx;
-- time_window
DROP INDEX CONCURRENTLY IF EXISTS time_window_created_time_idx;
DROP INDEX CONCURRENTLY IF EXISTS time_window_updated_time_idx;
-- user_card
DROP INDEX CONCURRENTLY IF EXISTS user_card_created_time_idx;
DROP INDEX CONCURRENTLY IF EXISTS user_card_updated_time_idx;
-- event_log
DROP INDEX CONCURRENTLY IF EXISTS event_log_created_time_idx;
DROP INDEX CONCURRENTLY IF EXISTS event_log_updated_time_idx;
-- program
DROP INDEX CONCURRENTLY IF EXISTS program_created_time_idx;
DROP INDEX CONCURRENTLY IF EXISTS program_updated_time_idx;
-- quota_rules
DROP INDEX CONCURRENTLY IF EXISTS quota_rules_created_time_idx;
DROP INDEX CONCURRENTLY IF EXISTS quota_rules_updated_time_idx;
-- card
DROP INDEX CONCURRENTLY IF EXISTS card_created_time_idx;
DROP INDEX CONCURRENTLY IF EXISTS card_updated_time_idx;
-- program_progress ( created_at & updated_at )
DROP INDEX CONCURRENTLY IF EXISTS program_progress_created_at_idx;
DROP INDEX CONCURRENTLY IF EXISTS program_progress_updated_at_idx;
-- user_configuration ( created_at & updated_at )
DROP INDEX CONCURRENTLY IF EXISTS user_configuration_created_at_idx;
DROP INDEX CONCURRENTLY IF EXISTS user_configuration_updated_at_idx;
-- invitation
DROP INDEX CONCURRENTLY IF EXISTS invitation_created_time_idx;
DROP INDEX CONCURRENTLY IF EXISTS invitation_updated_time_idx;