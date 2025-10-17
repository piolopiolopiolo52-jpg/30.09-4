SELECT 
    campaign_id,
    (conversions * 100.0) / budget AS ROI,
    IIF(
        (conversions * 100.0) / budget > 120, 'Успех',
        IIF((conversions * 100.0) / budget >= 80, 'Средне', 'Провал')
    ) AS success_level
FROM CampaignResults;
