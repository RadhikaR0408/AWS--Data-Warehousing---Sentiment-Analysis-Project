/*
==================================================================================================================================================================================
   Bronze to Gold layer (Sentiment Distribution (Core KPI))
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

A Classic Data Lake architecture has bronze → Silver → Gold

Here, In S3 + Athena pipeline, it's Bronze → Gold directly. The Silver layer wasn’t used because:

Dataset is simple or already clean.
Silver adds storage and processing steps (e.g., creating Parquet/optimized tables) ,skipping Silver reduces cost and complexity.
Athena is used for transformation Here, It acts as the “Silver layer” dynamically with queries over, Bronze data can produce cleaned/structured tables on the fly for Gold.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
==================================================================================================================================================================================
*/





SELECT
  sentiment,
  COUNT(*) AS post_count
FROM socialbuzz_sentiment
GROUP BY sentiment
ORDER BY post_count DESC;
