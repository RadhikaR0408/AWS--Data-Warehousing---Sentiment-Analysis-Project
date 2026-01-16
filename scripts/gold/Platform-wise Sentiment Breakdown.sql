/*
==================================================================================================================================================================================
   Bronze to Gold layer (Platform-wise Sentiment Breakdown)
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
  platform,
  sentiment,
  COUNT(*) AS post_count
FROM socialbuzz_sentiment
GROUP BY platform, sentiment
ORDER BY platform, post_count DESC;
