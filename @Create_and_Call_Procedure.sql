// 
create procedure efashion.pr_efasion_sc
(in aid integer) as
begin
select	"ARTICLE_LABEL",
 	 					"MARGIN",
 	 					"AMOUNT_SOLD",
 	 					"QUANTITY_SOLD"
 	 FROM	"EFASHION"."ARTICLE_LOOKUP" a,"EFASHION"."SHOP_FACTS" s
 	 WHERE	a."ARTICLE_ID" = s."ARTICLE_ID"
 	 AND	a."ARTICLE_ID" = :aid;
end;

call efashion.pr_efasion_sc(146379);

