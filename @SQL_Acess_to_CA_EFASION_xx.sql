//グラフィックCalculation Viewアクセス 
select * from "_SYS_BIC"."efashion/CA_EFASHION_GR";

//等価なSQLはこうなります。
select a.article_label, sum(s.margin),sum(s.amount_sold),sum(s.quantity_sold)
from "EFASHION"."ARTICLE_LOOKUP" a, "EFASHION"."SHOP_FACTS" s
where a.article_id = s.article_id
group by a.article_label;


//スクリプトCalculation Viewアクセス
select * from "_SYS_BIC"."efashion/CA_EFASHION_SC";

//素のSQLで実行してみる
select	"ARTICLE_LABEL",
 	 					"MARGIN",
 	 					"AMOUNT_SOLD",
 	 					"QUANTITY_SOLD"
 	 FROM	"EFASHION"."ARTICLE_LOOKUP" a,"EFASHION"."SHOP_FACTS" s
 	 WHERE	a."ARTICLE_ID" = s."ARTICLE_ID";


