CREATE OR REPLACE MATERIALIZED VIEW databricks_ai_playground.sap.gold_customer_demographic
(
  CONSTRAINT customer_id_lt_29 EXPECT (customerID < 29)
)
AS
SELECT
  c.*,
  ca.* EXCEPT(customerID)
FROM databricks_ai_playground.sap.customer AS c
JOIN databricks_ai_playground.sap.customer_addr AS ca
  ON c.customerID = ca.customerID;