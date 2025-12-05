CREATE OR REPLACE MATERIALIZED VIEW databricks_ai_playground.sap.gold_customer_order AS
SELECT
  c.*,
  o.* EXCEPT(customerID)
FROM databricks_ai_playground.sap.customer AS c
JOIN databricks_ai_playground.sap.order AS o
  ON c.customerID = o.customerID;
