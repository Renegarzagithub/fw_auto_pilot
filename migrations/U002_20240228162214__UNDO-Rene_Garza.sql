-- Script generated by Redgate Compare v1.19.6.13227
SET check_function_bodies = false;


DO language plpgsql $$BEGIN RAISE NOTICE 'Dropping public.widget_prices.Update...';END$$;
ALTER TABLE public.widget_prices DROP COLUMN "Update";

SET check_function_bodies = true;