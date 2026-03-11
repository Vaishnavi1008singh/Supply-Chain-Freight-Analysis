
-- Vendor Wise Freight Cost
SELECT Vendor_Name, SUM(Freight_Charges) AS Total_Freight
FROM shipments
GROUP BY Vendor_Name
ORDER BY Total_Freight DESC;

-- Freight Percentage
SELECT SUM(Freight_Charges) * 100.0 / SUM(GRPO_Qty) AS Freight_Percentage
FROM shipments;

-- Delivery Delay
SELECT Shipment_ID,
DATEDIFF(day, Shipment_Date, Delivery_Date) AS Delivery_Delay
FROM shipments;
