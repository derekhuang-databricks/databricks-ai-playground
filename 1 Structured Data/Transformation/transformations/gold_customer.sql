CREATE OR REPLACE MATERIALIZED VIEW databricks_ai_playground.sap.gold_customer AS
SELECT
  c.*,
  o.* EXCEPT (customerID, first_name, last_name, email_address, gender)
FROM databricks_ai_playground.sap.gold_customer_demographic c
JOIN databricks_ai_playground.sap.gold_customer_order o
  ON c.customerID = o.customerID;
