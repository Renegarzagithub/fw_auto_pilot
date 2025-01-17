-- Script generated by Redgate Compare v1.19.6.13227
SET check_function_bodies = false;


DO language plpgsql $$BEGIN RAISE NOTICE 'Creating public.widget_invoices...';END$$;
CREATE TABLE public.widget_invoices (
    invoice_id bigint NOT NULL GENERATED BY DEFAULT AS IDENTITY,
    customer_name text NOT NULL,
    total_amount numeric(9,2) NOT NULL,
    invoice_date date NOT NULL,
    is_paid boolean DEFAULT false
);
ALTER TABLE public.widget_invoices ADD CONSTRAINT widget_invoices_pkey PRIMARY KEY (invoice_id);
ALTER TABLE public.widget_invoices OWNER TO postgres;


DO language plpgsql $$BEGIN RAISE NOTICE 'Creating public.create_invoice(text, numeric, date)...';END$$;
CREATE PROCEDURE public.create_invoice(IN customer_name text, IN total_amount numeric, IN invoice_date date)
LANGUAGE plpgsql
AS $_$
BEGIN
  INSERT INTO widget_invoices (customer_name, total_amount, invoice_date)
  VALUES (customer_name, total_amount, invoice_date);
END;
$_$;
ALTER PROCEDURE public.create_invoice(IN customer_name text, IN total_amount numeric, IN invoice_date date) OWNER TO postgres;

SET check_function_bodies = true;

--fully editable--
