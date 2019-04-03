
create table tmp_d1 as
Select TR_TRANSACTION_ID  from transactions where TR_AURUSPAY_DATE between TO_TIMESTAMP('2015-07-01 00:00:00','YYYY-MM-DD HH24:MI:SS') and TO_TIMESTAMP('2015-10-31 23:59:59','YYYY-MM-DD HH24:MI:SS') 
create table tmp_d2 as
Select TR_TRANSACTION_ID  from transactions where TR_AURUSPAY_DATE between TO_TIMESTAMP('2015-11-01 00:00:00','YYYY-MM-DD HH24:MI:SS') and TO_TIMESTAMP('2015-12-31 23:59:59','YYYY-MM-DD HH24:MI:SS') //688314 

--select count(*) from tmp_d2 //select  131783 + 163500 from dual //295283
-- Select count(*)  from DECLINED_TRANSACTIONS where DTR_AURUSPAY_DATE between TO_TIMESTAMP('2015-07-01 00:00:00','YYYY-MM-DD HH24:MI:SS') and TO_TIMESTAMP('2015-12-31 23:59:59','YYYY-MM-DD HH24:MI:SS') //688314 //1279317
create table tmp_dtr1 as
Select DTR_DECLINED_TRANSACTION_ID as TR_TRANSACTION_ID from DECLINED_TRANSACTIONS where DTR_AURUSPAY_DATE between TO_TIMESTAMP('2015-07-01 00:00:00','YYYY-MM-DD HH24:MI:SS') and TO_TIMESTAMP('2015-10-31 23:59:59','YYYY-MM-DD HH24:MI:SS') 
create table tmp_dtr2 as
Select DTR_DECLINED_TRANSACTION_ID as TR_TRANSACTION_ID  from DECLINED_TRANSACTIONS where DTR_AURUSPAY_DATE between TO_TIMESTAMP('2015-11-01 00:00:00','YYYY-MM-DD HH24:MI:SS') and TO_TIMESTAMP('2015-12-31 23:59:59','YYYY-MM-DD HH24:MI:SS') //688314 



select status,count(status) from ALL_CONSTRAINTS where   table_name in ('TRANSACTION_ADDENDUM_DATA','TRANSACTIONS','DECLINED_TRANSACTIONS','TRANSACTION_EXTENSION_DATA','ECR_PRODUCT_DETAILS','CARRIER_MASTER','INSURANCE_MASTER','Image_master','batch_settlement_master','EMV_TAGS')
and CONSTRAINT_TYPE<>'P' group by status;

select  status,count(status) from  all_indexes
where   table_name in ('TRANSACTION_ADDENDUM_DATA','TRANSACTIONS','DECLINED_TRANSACTIONS','TRANSACTION_EXTENSION_DATA','ECR_PRODUCT_DETAILS','CARRIER_MASTER','INSURANCE_MASTER','Image_master','batch_settlement_master','EMV_TAGS')
and generated='N'  and uniqueness='NONUNIQUE' group by status



create table tmp_d1 as
Select TR_TRANSACTION_ID  from transactions where TR_AURUSPAY_DATE between TO_TIMESTAMP('2015-07-01 00:00:00','YYYY-MM-DD HH24:MI:SS') and TO_TIMESTAMP('2016-03-10 23:59:59','YYYY-MM-DD HH24:MI:SS') //664806
create table tmp_d2 as
Select TR_TRANSACTION_ID  from transactions where TR_AURUSPAY_DATE between TO_TIMESTAMP('2016-03-11 00:00:00','YYYY-MM-DD HH24:MI:SS') and TO_TIMESTAMP('2016-03-31 23:59:59','YYYY-MM-DD HH24:MI:SS') //688314 


Select count(*) from DECLINED_TRANSACTIONS where DTR_AURUSPAY_DATE between TO_TIMESTAMP('2015-07-01 00:00:00','YYYY-MM-DD HH24:MI:SS') and TO_TIMESTAMP('2016-01-31 23:59:59','YYYY-MM-DD HH24:MI:SS') //1871561
select count(*) from DECLINED_TRANSACTIONS where DTR_AURUSPAY_DATE between TO_TIMESTAMP('2016-02-01 00:00:00','YYYY-MM-DD HH24:MI:SS') and TO_TIMESTAMP('2016-03-31 23:59:59','YYYY-MM-DD HH24:MI:SS') //1554214 

Select count(*) from transactions where TR_AURUSPAY_DATE between TO_TIMESTAMP('2016-03-11 00:00:00','YYYY-MM-DD HH24:MI:SS') and TO_TIMESTAMP('2016-03-31 23:59:59','YYYY-MM-DD HH24:MI:SS')

select count(*) from tmp_d1
select count(*) from tmp_d2

Desc batch_settlement_master

select table_name,'alter index auruspay.'|| index_name ||' UNUSALE;' from all_indexes where table_name in  ('TRANSACTION_ADDENDUM_DATA','TRANSACTIONS','DECLINED_TRANSACTIONS','TRANSACTION_EXTENSION_DATA','ECR_PRODUCT_DETAILS','CARRIER_MASTER','INSURANCE_MASTER','Image_master','batch_settlement_master','EMV_TAGS')
and generated='N'  and uniqueness='NONUNIQUE'  order by table_name

select 'alter table auruspay.' || TABLE_NAME || ' disable constraint ' || CONSTRAINT_NAME || ';' from ALL_CONSTRAINTS where  table_name in  ('TRANSACTION_ADDENDUM_DATA','TRANSACTIONS','DECLINED_TRANSACTIONS','TRANSACTION_EXTENSION_DATA','ECR_PRODUCT_DETAILS','CARRIER_MASTER','INSURANCE_MASTER','Image_master','batch_settlement_master','EMV_TAGS')
and CONSTRAINT_TYPE<>'P'

select '*CREATE SEQUENCE ' || upper(sequence_name) || ' MINVALUE '|| sequence_name||'.nextval MAXVALUE '|| MAX_VALUE ||' INCREMENT BY 1 START WITH '|| sequence_name||'.nextval CACHE '|| CACHE_SIZE ||' NOORDER  NOCYCLE; #'
from user_sequences   

------------------



vbhapkar@vbhapkar:~$ cd /home/vbhapkar/Downloads/sqldeveloper-3.2.10.09.57-1.noarch/opt/sqldeveloper/
vbhapkar@vbhapkar:~/Downloads/sqldeveloper-3.2.10.09.57-1.noarch/opt/sqldeveloper$ ./sqldeveloper.sh 

-------------Explain Plan-----------------
  EXPLAIN PLAN FOR
Select count(*) from transactions where LOCAL_DATE between TO_TIMESTAMP('2014-05-01 00:00:00','YYYY-MM-DD HH24:MI:SS') and TO_TIMESTAMP('2014-05-31 23:59:59','YYYY-MM-DD HH24:MI:SS') 


    
SELECT PLAN_TABLE_OUTPUT FROM TABLE(DBMS_XPLAN.DISPLAY());

-------------End Explain Plan--------------------------


lsnrctl start


scp -r whizReports_18_DEC_13.dmp oracle@172.31.31.89:/home/oracle/app/oracle/admin/live/dpdump
 emctl start dbconsole


select 'Alter index mpayprod.'|| index_name ||' UNUSABLE;' from all_indexes where table_name in  ('IMAGE_MASTER','TRANSACTIONS','DECLINED_TRANSACTIONS','WHIZGIFT_CARD_TRANSACTIONS','VC_SIGNUP_TRANSACTION','VT_CUSTOMER','VT_TRANSACTION','BATCH_BALINQUIRY_TRANSACTIONS','BATCH_TRANSACTION_RECORDS','BATCH_REPORT_TRANSACTIONS','EMV_TAGS')
and generated='N'  and uniqueness='NONUNIQUE'  order by table_name



select 'alter table mpayprod.' || TABLE_NAME || ' disable constraint ' || CONSTRAINT_NAME || ';' from ALL_CONSTRAINTS where  table_name in  ('IMAGE_MASTER','TRANSACTIONS','DECLINED_TRANSACTIONS','WHIZGIFT_CARD_TRANSACTIONS','VC_SIGNUP_TRANSACTION','VT_CUSTOMER','VT_TRANSACTION','BATCH_BALINQUIRY_TRANSACTIONS','BATCH_TRANSACTION_RECORDS','BATCH_REPORT_TRANSACTIONS','EMV_TAGS')
and CONSTRAINT_TYPE<>'P'






-----------------
select status,count(status) from ALL_CONSTRAINTS where   table_name in('IMAGE_MASTER','TRANSACTIONS','DECLINED_TRANSACTIONS','WHIZGIFT_CARD_TRANSACTIONS','VC_SIGNUP_TRANSACTION','VT_CUSTOMER','VT_TRANSACTION','BATCH_BALINQUIRY_TRANSACTIONS','BATCH_TRANSACTION_RECORDS','BATCH_REPORT_TRANSACTIONS','EMV_TAGS')
and CONSTRAINT_TYPE<>'P' group by status;

select  status,count(status) from  all_indexes
where   table_name in ('IMAGE_MASTER','TRANSACTIONS','DECLINED_TRANSACTIONS','WHIZGIFT_CARD_TRANSACTIONS','VC_SIGNUP_TRANSACTION','VT_CUSTOMER','VT_TRANSACTION','BATCH_BALINQUIRY_TRANSACTIONS','BATCH_TRANSACTION_RECORDS','BATCH_REPORT_TRANSACTIONS','EMV_TAGS')
and generated='N'  and uniqueness='NONUNIQUE' group by status;

EXEC DBMS_STATS.gather_schema_stats('WHIZREPORTS',DBMS_STATS.AUTO_SAMPLE_SIZE);

--------------

select index_name, table_name,index_type, status, generated, segment_created
from  user_indexes
where table_name in ('IMAGE_MASTER','TRANSACTIONS','DECLINED_TRANSACTIONS','WHIZGIFT_CARD_TRANSACTIONS','VC_SIGNUP_TRANSACTION','VT_CUSTOMER','VT_TRANSACTION','BATCH_BALINQUIRY_TRANSACTIONS','BATCH_TRANSACTION_RECORDS','BATCH_REPORT_TRANSACTIONS','EMV_TAGS')

--------------------


begin
for i in (select constraint_name, table_name from user_constraints where table_name in ('IMAGE_MASTER','TRANSACTIONS','DECLINED_TRANSACTIONS','WHIZGIFT_CARD_TRANSACTIONS','VC_SIGNUP_TRANSACTION','VT_CUSTOMER','VT_TRANSACTION','BATCH_BALINQUIRY_TRANSACTIONS','BATCH_TRANSACTION_RECORDS','BATCH_REPORT_TRANSACTIONS','EMV_TAGS')
) LOOP
execute immediate 'alter table '||i.table_name||' disable constraint '||i.constraint_name||'';
end loop;
end;

begin
for i in (select constraint_name, table_name from user_constraints where table_name in ('transactions','declined_transactions','whizgift_card_transactions','VC_SIGNUP_TRANSACTION','VT_CUSTOMER','VT_TRANSACTION','BATCH_BALINQUIRY_TRANSACTIONS','BATCH_TRANSACTION_RECORDS','BATCH_REPORT_TRANSACTIONS','EMV_TAGS')
) LOOP
--execute immediate 'alter table '||i.table_name||' enable constraint '||i.constraint_name||'';
end loop;
end;

----------------
begin
for i in (select constraint_name, table_name from user_constraints where table_name in ('TRANSACTIONS','DECLINED_TRANSACTIONS','WHIZGIFT_CARD_TRANSACTIONS','VC_SIGNUP_TRANSACTION','VT_CUSTOMER','VT_TRANSACTION','BATCH_BALINQUIRY_TRANSACTIONS','BATCH_TRANSACTION_RECORDS','BATCH_REPORT_TRANSACTIONS','EMV_TAGS')
) LOOP
execute immediate 'alter table '||i.table_name||' disable constraint '||i.constraint_name||'';
end loop;
end;

begin
for i in (select constraint_name, table_name from user_constraints where table_name in ('transactions','declined_transactions','whizgift_card_transactions','VC_SIGNUP_TRANSACTION','VT_CUSTOMER','VT_TRANSACTION','BATCH_BALINQUIRY_TRANSACTIONS','BATCH_TRANSACTION_RECORDS','BATCH_REPORT_TRANSACTIONS','EMV_TAGS')
) LOOP
--execute immediate 'alter table '||i.table_name||' enable constraint '||i.constraint_name||'';
end loop;
end;


create table 
   new_transaction 
NOLOGGING as
select 
trn.TRANSACTION_SKEY    ,
trn.ORGANIZATION_ORG_SKEY ,
trn.SRC_TRANSACTION_ID  ,
trn.ACCOUNT_SKEY  ,
trn.LOYALTY_SKEY  ,
trn.CUSTOMER_SKEY ,
trn.TERMINAL_SKEY ,
trn.TRANSACTION_DATE_SKEY ,
trn.TIP_AMOUNT  ,
trn.TAX_AMOUNT  ,
trn.APPROVED_AMOUNT ,
trn.BALANCE_AMOUNT  ,
trn.TRANS_ORIGIN_TYPE ,
trn.ORDER_ID  ,
trn.BATCH_NUMBER  ,
trn.APPROVAL_CODE ,
trn.TRANS_REF_NUMBER  ,
trn.PROCESSOR_RECORD_NUMBER ,
trn.PROCESSOR_TRANSACTION_ID  ,
trn.ORIGINAL_TRANSACTION_ID ,
trn.REPORT_GROUP  ,
trn.ORDER_SOURCE  ,
trn.TABLE_NO  ,
trn.NO_OF_PEOPLE  ,
trn.SERVER_DATE_SKEY  ,
trn.TIMEZONE  ,
trn.TRANSACTION_COMMENT ,
trn.PROCESSOR_NAME  ,
trn.TRANSACTION_TYPE  ,
trn.INSERT_DATE ,
trn.LAST_UPDATE_DATE  ,
trn.EXPIRATION_DATE ,
trn.DEBITCHARGEID ,
trn.ACTIVE_IND  ,
trn.SOURCE_SYSTEM_SKEY  ,
trn.CC_NUMBER ,
trn.CARD_TYPE ,
trn.DISCOUNT  ,
trn.AMOUNT  ,
trn.OFFAMOUNT ,
trn.PROCESSOR ,
trn.LOYALTYMESSAGE  ,
trn.TRANS_SUBTYPE ,
trn.TAX ,
trn.LOCAL_DATE  ,
trn.CC_AMOUNT_USED  ,
trn.CASH_AMOUNT_USED  ,select table_name,'alter index auruspay.'|| index_name ||' UNUSALE;' from all_indexes where table_name in  ('TRANSACTION_ADDENDUM_DATA','TRANSACTIONS','DECLINED_TRANSACTIONS','TRANSACTION_EXTENSION_DATA','ECR_PRODUCT_DETAILS','CARRIER_MASTER','INSURANCE_MASTER','Image_master','batch_settlement_master','EMV_TAGS')
and generated='N'  and uniqueness='NONUNIQUE'  order by table_name

trn.ACH_AMOUNT_USED ,
trn.RESPONSE_CODE ,
trn.PROCESSOR_BATCH_NUMBER  ,
trn.COMMUNICATION_TYPE  ,
trn.MAC_KEY ,
trn.CARDHOLDER_NAME ,
trn.EXPIRY_DATE ,
trn.CASHIER_ID  ,
trn.INVOICE_NO  ,
trn.ENTRYDATA_SOURCE  ,
trn.HOST_NAME ,
trn.CARDHOLDERID_CODE ,
trn.CURRENCY_CODE ,
trn.SETTLEMENT_DATE ,
trn.COUPON_DISCOUNT ,
trn.TRANSACTION_DATE  ,
trn.BUCKET_ID ,
trn.PARENT_TRANSACTION_ID ,
trn.CHARITY_ID  ,
trn.CUSTOMER_TOKEN  ,
trn.DONATION  ,
trn.WHIZPAY_TICKET_NUMBER ,
trn.TRANS_SEQUENCE_NO ,
trn.PORTAL_USER_ID  ,
trn.RELOAD_MATCH  ,
trn.TERMINAL_SOFTWARE_VERSION ,
trn.STORE_TRANSACTION_DATE_SKEY ,
(CASE   trn.PROCESSOR
  WHEN 'FD NashVille' THEN 1
  WHEN 'FD Omaha' THEN 2
  WHEN 'FDMS' THEN 3
  WHEN 'FDMS Processor' THEN 4
    WHEN 'Global EMV Processor' THEN 5
    WHEN 'Global Payments' THEN 6
    WHEN 'Heartland Processor' THEN 7
    WHEN 'MerchantWareHouse' THEN 8
  WHEN 'Nova Processor' THEN 9
  WHEN 'Nova UK Processor' THEN 10
  WHEN 'Paymenttech' THEN 11
  WHEN 'SVS' THEN 12
  WHEN 'TSYS Processor' THEN 13
  WHEN 'WHIZGIFT' THEN 14
 ELSE 0
END)PROCESSOR_SKEY  ,  
(CASE trn.COMMUNICATION_TYPE
  WHEN 'CUS2' THEN 2
  WHEN 'ETHERNET' THEN 3
  WHEN 'ETHERNET0000' THEN 4
  WHEN 'LANDLINE' THEN 5
  WHEN 'OFFLINEETHERNET' THEN 6
  ELSE 1
END) COMMUNICATION_TYPE_SKEY  ,  
(CASE trn.TRANSACTION_TYPE
      WHEN 'CADDEBITORDER' THEN 1
    WHEN 'CADDEBITRETURN' THEN 2
    WHEN 'CADDEBITREVERSAL' THEN 3 
    WHEN 'CANCELGIFT' THEN 4
    WHEN 'CARDRECHARGE' THEN 5
    WHEN 'CASHRETURN' THEN 6
  WHEN 'CREATE' THEN 7
  WHEN 'DEBITORDER' THEN 8
  WHEN 'GIFTBALANCEENQUIRY' THEN 9
  WHEN 'GIFTBALANCETRANSFER' THEN 10
  WHEN 'GIFTDEACTIVATEWITHOUTREFUND' THEN 11
  WHEN 'GIFTDEACTIVATEWITHREFUND' THEN 12
  WHEN 'GIFTISSUE' THEN 13
  WHEN 'GIFTMIGRATION' THEN 14
  WHEN 'GIFTMIGRATIONREVERSAL' THEN 15
  WHEN 'GIFTREDEEM' THEN 16
  WHEN 'GIFTRETURN' THEN 17
  WHEN 'GIFTREVERSAL' THEN 18
  WHEN 'KEYEXCHANGE' THEN 19
  WHEN 'ORDER' THEN 20
  WHEN 'PA-REVERSAL' THEN 21
  WHEN 'POSTAUTH' THEN 22
  WHEN 'RETURN' THEN 23
  WHEN 'TIPGIFT' THEN 24
  ELSE 0
END
) TRANSACTION_TYPE_SKEY , 
(CASE trn.CARD_TYPE
  WHEN  'Visa' THEN 1
  WHEN 'Amex' THEN 2
  WHEN 'Diner'THEN 3
  WHEN 'JCB' THEN 4
  WHEN 'Mastercard' THEN 5
  WHEN 'Discover' THEN 6
  WHEN 'XX' THEN 9
  WHEN 'Visa Debit' THEN 10
  WHEN 'Mastro' THEN 11
  WHEN 'Visa Electron' THEN 12
  WHEN 'Americam Eagle' THEN 13
  WHEN 'Discover_1 ' THEN 14
  WHEN 'GC' THEN 7
  WHEN 'Debit' THEN 8
   ELSE 15 end)CARD_TYPE_SKEY   ,
(CASE   trn.TRANS_SUBTYPE
  WHEN 'IVR' THEN 1
  WHEN 'PMX' THEN 2
  WHEN 'PSH' THEN 3
  WHEN 'PSV' THEN 4
    WHEN 'UK1' THEN 5
    WHEN 'VTR' THEN 6
  ELSE 0
END) TRANS_SUBTYPE_SKEY ,
organization.src_org_id ,terminal.SRC_TERMINAL_ID,Customer.SRC_USER_ID,
(CASE   organization.ORG_TYPE
  WHEN 'ORG' THEN 1
  WHEN 'DIVISION' THEN 2
  WHEN 'STORE' THEN 3
  WHEN 'BRAND' THEN 4
  ELSE 0
END) ORG_TYPE_SKEY,
Transaction_code.transaction_code,
organization.BRAND
from transaction trn
left join organization on trn.organization_org_skey=organization.org_skey
left join Terminal on trn.Terminal_skey=Terminal.Terminal_skey
left join CUSTOMER on trn.Customer_skey=Customer.Customer_skey
left join Transaction_code on trn.src_transaction_id=Transaction_code.transaction_id


Select * from organization

---------------
--Truncate table bkup_transaction_old
--Drop table bkup_transaction_old
--rename transaction     to bkup_transaction_old;
--rename new_transaction      to transaction ;


--select * from transaction where rownum=1



/*


EXEC DBMS_STATS.gather_table_stats('WHIZREPORTS', 'TRANSACTION');

UPDATE TRANSACTION SET COMMUNICATION_TYPE_skey =
CASE COMMUNICATION_TYPE
  WHEN 'CUS2' THEN 2
  WHEN 'ETHERNET' THEN 3
  WHEN 'ETHERNET0000' THEN 4
  WHEN 'LANDLINE' THEN 5
  WHEN 'OFFLINEETHERNET' THEN 6
  ELSE 1
END
where transaction_date_skey in (Select time_skey from time
where full_date between to_date('01-01-2013') and to_date('31-07-2013'))




select * from TRANSACTION where rownum<10 order by 1 desc

UPDATE TRANSACTION SET COMMUNICATION_TYPE_skey =
CASE COMMUNICATION_TYPE
  WHEN 'CUS2' THEN 2
  WHEN 'ETHERNET' THEN 3
  WHEN 'ETHERNET0000' THEN 4
  WHEN 'LANDLINE' THEN 5
  WHEN 'OFFLINEETHERNET' THEN 6
  ELSE 1
END

WHERE ROWNUM<1300000
and COMMUNICATION_TYPE_skey is null

*/




/*

drop table parent_data

create table 
   parent_data
NOLOGGING as
Select  transaction_id, parent_transaction_id ,TRANSACTION_TYPE,TRANSACTION_code from transactions where parent_transaction_id is not null
----------------
drop table REVERSALCREDIT 
Create table REVERSALCREDIT 
NOLOGGING as
select * from parent_data where transaction_id in (
select parent_transaction_id from parent_data
where transaction_code='30')
AND transaction_code IN ('06','02')


drop table VoidOfVoid

Create table VoidOfVoid 
NOLOGGING as
select * from parent_data where transaction_id in (
select parent_transaction_id from parent_data
where transaction_code='30')
AND transaction_code IN ('06')

-----------------------
drop table VoidOfReturn 

Create table VoidOfReturn 
NOLOGGING as 
select * from parent_data where transaction_id in (
select parent_transaction_id from parent_data
where transaction_code='30')
AND transaction_code IN ('02')

------------------------
drop table VoidOrRefundDirect

Create table VoidOrRefundDirect 
NOLOGGING as 
select * from parent_data where transaction_id in (
select parent_transaction_id from parent_data
where transaction_code='30')
AND transaction_code IN ('01')


-------------------
drop table VoidOrRefund

Create table VoidOrRefund
NOLOGGING as 
select * from parent_data where transaction_id in (
select parent_transaction_id from parent_data
where transaction_code='06')
AND transaction_code IN ('01')

*/


--- final---------

truncate table parent_data
truncate table parent_trans

drop table parent_data
drop table parent_trans

create table 
   parent_data
NOLOGGING as
Select  src_transaction_id, parent_transaction_id ,TRANSACTION_TYPE,TRANSACTION_code 
from transaction where parent_transaction_id is not null

create table 
   parent_trans
NOLOGGING as
Select  src_transaction_id, parent_transaction_id ,TRANSACTION_TYPE,TRANSACTION_code 
,(select transaction_code from transaction x where parent_data.parent_transaction_id=x.src_transaction_id and rownum=1) as parent_transaction_code
from parent_data

----


select 
      org.ORG_SKEY,
      ct.CARD_TYPE_SKEY,
      ct.card_sub_type,
      case when trn.TRANSACTION_CODE in ('01','03','04')  then 1 
           when trn.TRANSACTION_CODE in ('06') then 2 
           when trn.TRANSACTION_CODE in ('02') then 4
           when trn.TRANSACTION_CODE in ('30') and parent_trans.parent_TRANSACTION_CODE='01' then 2
           when trn.TRANSACTION_CODE in ('30') and parent_trans.parent_TRANSACTION_CODE='02' then 4
           when trn.TRANSACTION_CODE in ('30') and parent_trans.parent_TRANSACTION_CODE='06' then 1
           when trn.TRANSACTION_CODE in ('02') and parent_trans.parent_TRANSACTION_CODE is null then 4
           when trn.TRANSACTION_CODE in ('11') then 23
           when trn.TRANSACTION_CODE in ('12') then 14
           when trn.TRANSACTION_CODE in ('13') then 17
           when trn.TRANSACTION_CODE in ('14') then 18
           when trn.TRANSACTION_CODE in ('15') then 19
           when trn.TRANSACTION_CODE in ('16') then 20
           when trn.TRANSACTION_CODE in ('17') then 15
           when trn.TRANSACTION_CODE in ('18') then 21
           when trn.TRANSACTION_CODE in ('19') then 22
           when trn.TRANSACTION_CODE in ('20') then 7
           when trn.TRANSACTION_CODE in ('21') then 26
           when trn.TRANSACTION_CODE in ('22') then 13
           when trn.TRANSACTION_CODE in ('80') then 25
           when trn.TRANSACTION_CODE in ('52') then 24
          else
           0
      end  as trn_type,
      sum(case when trn.TRANSACTION_CODE in ('01','03','04') then 1 
               when trn.TRANSACTION_CODE in ('06') then 1
               when trn.TRANSACTION_CODE in ('02') then 1
			   when trn.TRANSACTION_CODE in ('30') and parent_trans.parent_TRANSACTION_CODE='01' then 1
               when trn.TRANSACTION_CODE in ('30') and parent_trans.parent_TRANSACTION_CODE='02' then 1
               when trn.TRANSACTION_CODE in ('30') and parent_trans.parent_TRANSACTION_CODE='06' then 1
			   when trn.TRANSACTION_CODE in ('02') and parent_trans.parent_TRANSACTION_CODE is null then 1
			   when trn.TRANSACTION_CODE in ('11') then 1
			   when trn.TRANSACTION_CODE in ('12') then 1
			   when trn.TRANSACTION_CODE in ('13') then 1
			   when trn.TRANSACTION_CODE in ('14') then 1
			   when trn.TRANSACTION_CODE in ('15') then 1
			   when trn.TRANSACTION_CODE in ('16') then 1
			   when trn.TRANSACTION_CODE in ('17') then 1
			   when trn.TRANSACTION_CODE in ('18') then 1
			   when trn.TRANSACTION_CODE in ('19') then 1
			   when trn.TRANSACTselect table_name,'alter index auruspay.'|| index_name ||' UNUSALE;' from all_indexes where table_name in  ('TRANSACTION_ADDENDUM_DATA','TRANSACTIONS','DECLINED_TRANSACTIONS','TRANSACTION_EXTENSION_DATA','ECR_PRODUCT_DETAILS','CARRIER_MASTER','INSURANCE_MASTER','Image_master','batch_settlement_master','EMV_TAGS')
and generated='N'  and uniqueness='NONUNIQUE'  order by table_name
ION_CODE in ('20') then 1
			   when trn.TRANSACTION_CODE in ('21') then 1
			   when trn.TRANSACTION_CODE in ('22') then 1
			   when trn.TRANSACTION_CODE in ('80') then 1
			   when trn.TRANSACTION_CODE in ('52') then 1

               else 0 end ) order_Trn_Count,
      sum(case when trn.TRANSACTION_CODE in ('01','03','04')  then  trn.AMOUNT  
               when trn.TRANSACTION_CODE in ('06')  then  trn.AMOUNT  
               when trn.TRANSACTION_CODE in ('02')  then  trn.AMOUNT  
			   when trn.TRANSACTION_CODE in ('30') and parent_trans.parent_TRANSACTION_CODE='01' then  trn.AMOUNT  
               when trn.TRANSACTION_CODE in ('30') and parent_trans.parent_TRANSACTION_CODE='02' then  trn.AMOUNT  
               when trn.TRANSACTION_CODE in ('30') and parent_trans.parent_TRANSACTION_CODE='06' then  trn.AMOUNT  
			   when trn.TRANSACTION_CODE in ('02') and parent_trans.parent_TRANSACTION_CODE is null then  trn.AMOUNT  
			   when trn.TRANSACTION_CODE in ('11') then trn.AMOUNT  
			   when trn.TRANSACTION_CODE in ('12') then trn.AMOUNT  
			   when trn.TRANSACTION_CODE in ('13') then trn.AMOUNT  
			   when trn.TRANSACTION_CODE in ('14') then trn.AMOUNT  
			   when trn.TRANSACTION_CODE in ('15') then trn.AMOUNT  
			   when trn.TRANSACTION_CODE in ('16') then trn.AMOUNT  
			   when trn.TRANSACTION_CODE in ('17') then trn.AMOUNT  
			   when trn.TRANSACTION_CODE in ('18') then trn.AMOUNT  
			   when trn.TRANSACTION_CODE in ('19') then trn.AMOUNT  
			   when trn.TRANSACTION_CODE in ('20') then trn.AMOUNT  
			   when trn.TRANSACTION_CODE in ('21') then trn.AMOUNT  
			   when trn.TRANSACTION_CODE in ('22') then trn.AMOUNT  
			   when trn.TRANSACTION_CODE in ('80') then trn.AMOUNT  
			   when trn.TRANSACTION_CODE in ('52') then trn.AMOUNT  
               
			   else 0 end) Order_Request_Amount ,
      sum(case when trn.TRANSACTION_CODE in ('01','03','04')  then trn.TIP_AMOUNT  
               when trn.TRANSACTION_CODE in ('06') then trn.TIP_AMOUNT  
               when trn.TRANSACTION_CODE in ('02') then trn.TIP_AMOUNT  
			   when trn.TRANSACTION_CODE in ('30') and parent_trans.parent_TRANSACTION_CODE='01' then  trn.TIP_AMOUNT  
               when trn.TRANSACTION_CODE in ('30') and parent_trans.parent_TRANSACTION_CODE='02' then  trn.TIP_AMOUNT  
               when trn.TRANSACTION_CODE in ('30') and parent_trans.parent_TRANSACTION_CODE='06' then  trn.TIP_AMOUNT  
			   when trn.TRANSACTION_CODE in ('02') and parent_trans.parent_TRANSACTION_CODE is null then  trn.TIP_AMOUNT  
			   when trn.TRANSACTION_CODE in ('11') then trn.TIP_AMOUNT 
			   when trn.TRANSACTION_CODE in ('12') then trn.TIP_AMOUNT 
			   when trn.TRANSACTION_CODE in ('13') then trn.TIP_AMOUNT 
			   when trn.TRANSACTION_CODE in ('14') then trn.TIP_AMOUNT 
			   when trn.TRANSACTION_CODE in ('15') then trn.TIP_AMOUNT 
			   when trn.TRANSACTION_CODE in ('16') then trn.TIP_AMOUNT 
			   when trn.TRANSACTION_CODE in ('17') then trn.TIP_AMOUNT 
			   when trn.TRANSACTION_CODE in ('18') then trn.TIP_AMOUNT 
			   when trn.TRANSACTION_CODE in ('19') then trn.TIP_AMOUNT 
			   when trn.TRANSACTION_CODE in ('20') then trn.TIP_AMOUNT 
			   when trn.TRANSACTION_CODE in ('21') then trn.TIP_AMOUNT 
			   when trn.TRANSACTION_CODE in ('22') then trn.TIP_AMOUNT 
			   when trn.TRANSACTION_CODE in ('80') then trn.TIP_AMOUNT 
			   when trn.TRANSACTION_CODE in ('52') then trn.TIP_AMOUNT 


               else 0 end) Order_Tip_Amount ,
      sum(case when trn.TRANSACTION_CODE in ('01','03','04')  then trn.TAX_AMOUNT  
               when trn.TRANSACTION_CODE in ('06')  then  trn.TAX_AMOUNT  
               when trn.TRANSACTION_CODE in ('02')  then  trn.TAX_AMOUNT  
			   when trn.TRANSACTION_CODE in ('30') and parent_trans.parent_TRANSACTION_CODE='01' then  trn.TAX_AMOUNT  
               when trn.TRANSACTION_CODE in ('30') and parent_trans.parent_TRANSACTION_CODE='02' then  trn.TAX_AMOUNT  
               when trn.TRANSACTION_CODE in ('30') and parent_trans.parent_TRANSACTION_CODE='06' then  trn.TAX_AMOUNT  
			   when trn.TRANSACTION_CODE in ('02') and parent_trans.parent_TRANSACTION_CODE is null then  trn.TAX_AMOUNT  
			   when trn.TRANSACTION_CODE in ('11') then trn.TAX_AMOUNT
			   when trn.TRANSACTION_CODE in ('12') then trn.TAX_AMOUNT
			   when trn.TRANSACTION_CODE in ('13') then trn.TAX_AMOUNT
			   when trn.TRANSACTION_CODE in ('14') then trn.TAX_AMOUNT
			   when trn.TRANSACTION_CODE in ('15') then trn.TAX_AMOUNT
			   when trn.TRANSACTION_CODE in ('16') then trn.TAX_AMOUNT
			   when trn.TRANSACTION_CODE in ('17') then trn.TAX_AMOUNT
			   when trn.TRANSACTION_CODE in ('18') then trn.TAX_AMOUNT
			   when trn.TRANSACTION_CODE in ('19') then trn.TAX_AMOUNT
			   when trn.TRANSACTION_CODE in ('20') then trn.TAX_AMOUNT
			   when trn.TRANSACTION_CODE in ('21') then trn.TAX_AMOUNT
			   when trn.TRANSACTION_CODE in ('22') then trn.TAX_AMOUNT
			   when trn.TRANSACTION_CODE in ('80') then trn.TAX_AMOUNT
			   when trn.TRANSACTION_CODE in ('52') then trn.TAX_AMOUNT

             else 0 end) Order_TAX_Amount ,  
      sum(case when trn.TRANSACTION_CODE in ('01','03','04')  then trn.cc_amount_used 
               when trn.TRANSACTION_CODE in ('06')  then  trn.cc_amount_used  
               when trn.TRANSACTION_CODE in ('02')  then  trn.cc_amount_used  
			   when trn.TRANSACTION_CODE in ('30') and parent_trans.parent_TRANSACTION_CODE='01' then  trn.cc_amount_used  
               when trn.TRANSACTION_CODE in ('30') and parent_trans.parent_TRANSACTION_CODE='02' then  trn.cc_amount_used  
               when trn.TRANSACTION_CODE in ('30') and parent_trans.parent_TRANSACTION_CODE='06' then  trn.cc_amount_used  
			   when trn.TRANSACTION_CODE in ('02') and parent_trans.parent_TRANSACTION_CODE is null then  trn.cc_amount_used  
			   when trn.TRANSACTION_CODE in ('11') then trn.cc_amount_used 
			   when trn.TRANSACTION_CODE in ('12') then trn.cc_amount_used 
			   when trn.TRANSACTION_CODE in ('13') then trn.cc_amount_used 
			   when trn.TRANSACTION_CODE in ('14') then trn.cc_amount_used 
			   when trn.TRANSACTION_CODE in ('15') then trn.cc_amount_used 
			   when trn.TRANSACTION_CODE in ('16') then trn.cc_amount_used 
			   when trn.TRANSACTION_CODE in ('17') then trn.cc_amount_used 
			   when trn.TRANSACTION_CODE in ('18') then trn.cc_amount_used 
			   when trn.TRANSACTION_CODE in ('19') then trn.cc_amount_used 
			   when trn.TRANSACTION_CODE in ('20') then trn.cc_amount_used 
			   when trn.TRANSACTION_CODE in ('21') then trn.cc_amount_used 
			   when trn.TRANSACTION_CODE in ('22') then trn.cc_amount_used 
			   when trn.TRANSACTION_CODE in ('80') then trn.cc_amount_used 
			   when trn.TRANSACTION_CODE in ('52') then trn.cc_amount_used 
      
      else 0 end) Order_NET_Amount,
      sum(case when trn.TRANSACTION_CODE in ('01','03','04')  then trn.AMOUNT+trn.TAX_AMOUNT+trn.TIP_AMOUNT  
               when trn.TRANSACTION_CODE in ('06')       then  trn.AMOUNT+trn.TAX_AMOUNT+trn.TIP_AMOUNT 
               when trn.TRANSACTION_CODE in ('02')       then  trn.AMOUNT+trn.TAX_AMOUNT+trn.TIP_AMOUNT 
			   when trn.TRANSACTION_CODE in ('30') and parent_trans.parent_TRANSACTION_CODE='01' then  trn.AMOUNT+trn.TAX_AMOUNT+trn.TIP_AMOUNT  
               when trn.TRANSACTION_CODE in ('30') and parent_trans.parent_TRANSACTION_CODE='02' then  trn.AMOUNT+trn.TAX_AMOUNT+trn.TIP_AMOUNT  
               when trn.TRANSACTION_CODE in ('30') and parent_trans.parent_TRANSACTION_CODE='06' then  trn.AMOUNT+trn.TAX_AMOUNT+trn.TIP_AMOUNT  
			   when trn.TRANSACTION_CODE in ('02') and parent_trans.parent_TRANSACTION_CODE is null then  trn.AMOUNT+trn.TAX_AMOUNT+trn.TIP_AMOUNT  
			   when trn.TRANSACTION_CODE in ('11') then trn.AMOUNT+trn.TAX_AMOUNT+trn.TIP_AMOUNT
			   when trn.TRANSACTION_CODE in ('12') then trn.AMOUNT+trn.TAX_AMOUNT+trn.TIP_AMOUNT
			   when trn.TRANSACTION_CODE in ('13') then trn.AMOUNT+trn.TAX_AMOUNT+trn.TIP_AMOUNT
			   when trn.TRANSACTION_CODE in ('14') then trn.AMOUNT+trn.TAX_AMOUNT+trn.TIP_AMOUNT
			   when trn.TRANSACTION_CODE in ('15') then trn.AMOUNT+trn.TAX_AMOUNT+trn.TIP_AMOUNT
			   when trn.TRANSACTION_CODE in ('16') then trn.AMOUNT+trn.TAX_AMOUNT+trn.TIP_AMOUNT
			   when trn.TRANSACTION_CODE in ('17') then trn.AMOUNT+trn.TAX_AMOUNT+trn.TIP_AMOUNT
			   when trn.TRANSACTION_CODE in ('18') then trn.AMOUNT+trn.TAX_AMOUNT+trn.TIP_AMOUNT
			   when trn.TRANSACTION_CODE in ('19') then trn.AMOUNT+trn.TAX_AMOUNT+trn.TIP_AMOUNT
			   when trn.TRANSACTION_CODE in ('20') then trn.AMOUNT+trn.TAX_AMOUNT+trn.TIP_AMOUNT
			   when trn.TRANSACTION_CODE in ('21') then trn.AMOUNT+trn.TAX_AMOUNT+trn.TIP_AMOUNT
			   when trn.TRANSACTION_CODE in ('22') then trn.AMOUNT+trn.TAX_AMOUNT+trn.TIP_AMOUNT
			   when trn.TRANSACTION_CODE in ('80') then trn.AMOUNT+trn.TAX_AMOUNT+trn.TIP_AMOUNT
			   when trn.TRANSACTION_CODE in ('52') then trn.AMOUNT+trn.TAX_AMOUNT+trn.TIP_AMOUNT

      else 0 end) Order_Gross_Amount            

from transaction trn inner join card_type ct on trn.card_type_skey=ct.card_type_skey
inner join organization org on org.src_org_id=trn.src_org_id
left join parent_trans on trn.src_transaction_id=parent_trans.Parent_transaction_id
where --trn.src_org_id in ('MRC5036')and 

trn.TRANSACTION_DATE_SKEY in (select time_skey from time where FULL_DATE between sysdate-72 and sysdate-62 )
group by org.ORG_SKEY,ct.card_type_skey,ct.card_sub_type,
      case when trn.TRANSACTION_CODE in ('01','03','04')  then 1 
           when trn.TRANSACTION_CODE in ('06') then 2 
           when trn.TRANSACTION_CODE in ('02') then 4
           when trn.TRANSACTION_CODE in ('30') and parent_trans.parent_TRANSACTION_CODE='01' then 2
           when trn.TRANSACTION_CODE in ('30') and parent_trans.parent_TRANSACTION_CODE='02' then 4
           when trn.TRANSACTION_CODE in ('30') and parent_trans.parent_TRANSACTION_CODE='06' then 1
           when trn.TRANSACTION_CODE in ('02') and parent_trans.parent_TRANSACTION_CODE is null then 4
           when trn.TRANSACTION_CODE in ('11') then 23
           when trn.TRANSACTION_CODE in ('12') then 14
           when trn.TRANSACTION_CODE in ('13') then 17
           when trn.TRANSACTION_CODE in ('14') then 18
           when trn.TRANSACTION_CODE in ('15') then 19
           when trn.TRANSACTION_CODE in ('16') then 20
           when trn.TRANSACTION_CODE in ('17') then 15
           when trn.TRANSACTION_CODE in ('18') then 21
           when trn.TRANSACTION_CODE in ('19') then 22
           when trn.TRANSACTION_CODE in ('20') then 7
           when trn.TRANSACTION_CODE in ('21') then 26
           when trn.TRANSACTION_CODE in ('22') then 13
           when trn.TRANSACTION_CODE in ('80') then 25
           when trn.TRANSACTION_CODE in ('52') then 24
          else
           0
      end	
      
      
      
      
      
---------------------------------

impdp mpayprod/mpaypr0d TABLE_EXISTS_ACTION=REPLACE EXCLUDE=USER REMAP_SCHEMA=mpayprod:mpayprod remap_tablespace=WHIZPAYDATA:WHIZPAYDATA, WHIZPAYINDEX:WHIZPAYINDEX DUMPFILE=dba_20131002.dmp  LOGFILE=dmp_16122013.log ;


CREATE USER DM_MS11DBQA_R IDENTIFIED BY DM123 DEFAULT TABLESPACE WHIZPAYDATA TEMPORARY TABLESPACE WHIZPAYDATA_TEMP QUOTA 
UNLIMITED ON WHIZPAYDATA;
      
      
GRANT CONNECT TO DM_MS11DBQA_R;
Grant Alter Any Table to DM_MS11DBQA_R;
GRANT ALTER ANY INDEX TO DM_MS11DBQA_R;
grant select, delete on mpayprod.TRANSACTIONS to DM_MS11DBQA_R;
grant select, delete on mpayprod.VT_TRANSACTION to DM_MS11DBQA_R;
grant select, delete on mpayprod.EMV_TAGS to DM_MS11DBQA_R;
grant select, delete on mpayprod.BATCH_REPORT_TRANSACTIONS to DM_MS11DBQA_R;
grant select, delete on mpayprod.IMAGE_MASTER to DM_MS11DBQA_R;
grant select, delete on mpayprod.BATCH_BALINQUIRY_TRANSACTIONS to DM_MS11DBQA_R;
grant select, delete on mpayprod.VT_CUSTOMER to DM_MS11DBQA_R;
grant select, delete on mpayprod.VC_SIGNUP_TRANSACTION to DM_MS11DBQA_R;
grant select, delete on mpayprod.WHIZGIFT_CARD_TRANSACTIONS to DM_MS11DBQA_R;
grant select, delete on mpayprod.BATCH_TRANSACTION_RECORDS to DM_MS11DBQA_R;
grant select, delete on mpayprod.DECLINED_TRANSACTIONS to DM_MS11DBQA_R;
grant select on mpayprod.BRAND_MASTER to DM_MS11DBQA_R;
      
------------------------
      
drop user DM_MS11DBQA_R  cascade;

DROP TABLESPACE MS11DBQA_TEMP INCLUDING CONTENTS AND DATAFILES;
DROP TABLESPACE MS11DBQA_INDEX INCLUDING CONTENTS AND DATAFILES;
DROP TABLESPACE MS11DBQA INCLUDING CONTENTS AND DATAFILES;

drop materialized view DM_MS11DBQA_R.MV_TRANSACTIONS PRESERVE TABLE;

select 'drop materialized view '||owner||'.'||name||' PRESERVE TABLE;'
  from dba_registered_snapshots
 where name in (select table_name from dba_tables where tablespace_name = 'WWWDBQA');

CREATE TEMPORARY TABLESPACE MS11DBQA_TEMP TEMPFILE '/home/oracle/app/oracle/oradata/live/MS11DBQA_TEMP.dbf' SIZE 2G REUSE 
AUTOEXTEND ON NEXT 250M MAXSIZE UNLIMITED;

CREATE USER DM_MS11DBQA_R IDENTIFIED BY DM123 DEFAULT TABLESPACE MS11DBQA TEMPORARY TABLESPACE MS11DBQA_TEMP QUOTA UNLIMITED 
ON MS11DBQA;

GRANT CONNECT TO DM_MS11DBQA_R;
GRANT SELECT ANY TABLE  TO DM_MS11DBQA_R;
GRANT ALTER ANY INDEX TO DM_MS11DBQA_R;
GRANT DROP ANY INDEX TO DM_MS11DBQA_R;
GRANT DELETE ANY TABLE TO DM_MS11DBQA_R;
GRANT UPDATE ANY TABLE TO DM_MS11DBQA_R;
GRANT INSERT ANY TABLE TO DM_MS11DBQA_R;
GRANT DATAPUMP_IMP_FULL_DATABASE TO DM_MS11DBQA_R;



CREATE TABLESPACE WHIZPAYDATA DATAFILE '/home/oracle/app/oracle/oradata/live/WHIZPAYDATA.dbf' SIZE 10G REUSE AUTOEXTEND ON 
NEXT 500M MAXSIZE UNLIMITED;

CREATE TABLESPACE WHIZPAYINDEX DATAFILE '/home/oracle/app/oracle/oradata/live/WHIZPAYINDEX.dbf' SIZE 4G REUSE AUTOEXTEND ON 
NEXT 500M MAXSIZE UNLIMITED;

CREATE TEMPORARY TABLESPACE WHIZPAYDATA_TEMP TEMPFILE '/home/oracle/app/oracle/oradata/live/WHIZPAYDATA_TEMP.dbf' SIZE 3G 
REUSE AUTOEXTEND ON NEXT 500M MAXSIZE UNLIMITED; 


alter tablespace WHIZPAYDATA add datafile '/home/oracle/app/oracle/oradata/live/WHIZPAYDATA01.dbf' size 2000M autoextend on;

CREATE USER mpayprod IDENTIFIED BY mpaypr0d DEFAULT TABLESPACE WHIZPAYDATA TEMPORARY TABLESPACE WHIZPAYDATA_TEMP QUOTA 
UNLIMITED ON WHIZPAYDATA;

GRANT CREATE SESSION TO mpayprod;
GRANT CREATE PROCEDURE TO mpayprod;
GRANT CREATE SEQUENCE TO  mpayprod;
GRANT CREATE SYNONYM TO  mpayprod;
GRANT CREATE TABLE TO  mpayprod;
GRANT CREATE USER TO  mpayprod;
GRANT CREATE VIEW TO mpayprod;
GRANT CREATE TYPE TO mpayprod;
GRANT DBA to mpayprod;

------------------------------
EXEC DBMS_STATS.gather_schema_stats('mpayprod',DBMS_STATS.AUTO_SAMPLE_SIZE);
exec dbms_stats.gather_schema_stats(ownname=>'mpayprod', estimate_percent=>dbms_stats.auto_sample_size, degree=>8); 
----------------
select sum(bytes)/1024/1024/1024, sum(maxbytes)/1024/1024/1024 from dba_data_files where tablespace_name='MS11DBQA';
select sum(bytes)/1024/1024/1024, sum(maxbytes)/1024/1024/1024 from dba_temp_files where tablespace_name='MS11DBQA_TEMP';

SELECT * from dba_data_files
SELECT * from dba_temp_files
-----

------------Listner status------

 cd $ORACLE_HOME/bin
  lsnrctl status
-------------
vbhapkar@vbhapkar:~$ cd /home/vbhapkar/Downloads/sqldeveloper-3.2.10.09.57-1.noarch/opt/sqldeveloper/
vbhapkar@vbhapkar:~/Downloads/sqldeveloper-3.2.10.09.57-1.noarch/opt/sqldeveloper$ ./sqldeveloper.sh 

select TABLESPACE_NAME, BYTES_USED, BYTES_FREE from V$TEMP_SPACE_HEADER;

SELECT dbms_metadata.get_ddl( 'TABLESPACE', 'WHIZREPORTS')  FROM dual;
--------

-- How to change SGA size

SQL> create pfile from spfile;

SQL> show parameter pfile;

NAME                                 TYPE        VALUE
------------------------------------ ----------- ------------------------------
spfile                               string      /home/oracle/app/oracle/produc
                                                 t/11.2.0/db_1/dbs/spfilelive.o
                                                 ra

display as spfilename

SQL> show parameter sga_

SQL> alter system set sga_max_size=10G;
SQL> alter system set sga_target=10G;

SQL> create pfile from spfile;
---------------------------------------------------------------




-------------------------------_Auruapay Data Deletion--------------------------------

  CREATE TABLE AURUSPAY.DMSUITE_TABLE
   (DMS_ID NUMBER NOT NULL ENABLE, 
	DMS_DATA VARCHAR2(50 BYTE), 
	 PRIMARY KEY (DMS_ID)
  )
  insert into AURUSPAY.DMSUITE_TABLE (DMS_ID,DMS_DATA)
  values(1,'DMS_DATA' )

-- Constraint Disable

select 'alter table auruspay.'||table_name||' disable constraint '||CONSTRAINT_NAME||';'  from ALL_CONSTRAINTS where   
table_name in ('TRANSACTION_ADDENDUM_DATA','TRANSACTIONS','DECLINED_TRANSACTIONS','TRANSACTION_EXTENSION_DATA','ECR_PRODUCT_DETAILS','CARRIER_MASTER','INSURANCE_MASTER','Image_master','EMV_TAGS')
and CONSTRAINT_TYPE<>'P'

-- Constraint Enable
select 'alter table auruspay.'||table_name||' enable constraint '||CONSTRAINT_NAME||';'  from ALL_CONSTRAINTS where   
table_name in ('TRANSACTION_ADDENDUM_DATA','TRANSACTIONS','DECLINED_TRANSACTIONS','TRANSACTION_EXTENSION_DATA','ECR_PRODUCT_DETAILS','CARRIER_MASTER','INSURANCE_MASTER','Image_master','EMV_TAGS')
and CONSTRAINT_TYPE<>'P'


-- NEW INDEX SQL

select ai.OWNER,ai.TABLESPACE_NAME,ai.TABLE_NAME,ai.INDEX_NAME,aic.COLUMN_NAME,'DROP INDEX auruspay.'||ai.INDEX_NAME||';' DROP_INDEX, 'CREATE INDEX '||ai.INDEX_NAME||' ON '||ai.TABLE_NAME||'(' ||aic.COLUMN_NAME||') TABLESPACE AURUSPAY_INDEX PARALLEL 8;' SQL
from  all_indexes ai, all_ind_columns aic
where  ai.table_name=aic.table_name and ai.OWNER=aic.INDEX_OWNER and ai.INDEX_NAME=aic.INDEX_NAME
and ai.table_name in ('TRANSACTION_ADDENDUM_DATA','TRANSACTIONS','DECLINED_TRANSACTIONS','TRANSACTION_EXTENSION_DATA','ECR_PRODUCT_DETAILS','CARRIER_MASTER','INSURANCE_MASTER','Image_master','batch_settlement_master','EMV_TAGS')
and ai.generated='N'  and ai.uniqueness='NONUNIQUE' 
order by ai.OWNER,ai.TABLESPACE_NAME,ai.TABLE_NAME,ai.INDEX_NAME


--NON DATA DELETION TABLES
select ai.OWNER,ai.TABLESPACE_NAME,ai.TABLE_NAME,ai.INDEX_NAME,aic.COLUMN_NAME,'CREATE INDEX '||ai.INDEX_NAME||' ON '||ai.TABLE_NAME||'(' ||aic.COLUMN_NAME||') TABLESPACE ' ||ai.TABLESPACE_NAME||' NOLOGGING PARALLEL 8;' SQL
from  all_indexes ai, all_ind_columns aic
where  ai.table_name=aic.table_name and ai.OWNER=aic.INDEX_OWNER and ai.INDEX_NAME=aic.INDEX_NAME
and ai.table_name in ('CORPORATE_MASTER','CREDIT_PROCESSOR_MASTER','DEBIT_PROCESSOR_MASTER','FORM_FACTOR_MASTER','GIFT_PROCESSOR_MASTER','STORE_MASTER','STORE_SETTLEMENT_MASTER','CARD_TYPE_MASTER','CHUNK_IMAGE_MASTER','COMMUNICATION_MASTER','ENTRYDATA_SOURCE_MASTER','FORM_FACTOR_TYPE_MASTER','PROCESSOR_MASTER','TIME_ZONE_MASTER','TRANSACTION_TYPE_MASTER','HSM_KEYS','CORPORATE_KEY_MASTER','DEVICE_MASTER','PROCESSOR_COUNTER_MASTER','TERMINAL_BATCH_NUMBER','RECEIPT_DETAILS_MASTER','REVERSAL_REASON_MASTER','RSA_KEY_MASTER','CUSTOMER_MASTER','CARD_TOKEN_MASTER','CARD_FRAUD_MASTER','TRANSACTION_TOKEN')
and ai.generated='N'  and ai.uniqueness='NONUNIQUE' 
order by ai.OWNER,ai.TABLESPACE_NAME,ai.TABLE_NAME,ai.INDEX_NAME


---All Tables INDEX



select ai.OWNER,ai.TABLESPACE_NAME,ai.TABLE_NAME,ai.INDEX_NAME,aic.COLUMN_NAME,'CREATE INDEX '||ai.INDEX_NAME||' ON '||ai.TABLE_NAME||'(' ||aic.COLUMN_NAME||') TABLESPACE ' ||ai.TABLESPACE_NAME||' NOLOGGING PARALLEL 8;' SQL
from  all_indexes ai, all_ind_columns aic
where  ai.table_name=aic.table_name and ai.OWNER=aic.INDEX_OWNER and ai.INDEX_NAME=aic.INDEX_NAME
and ai.table_name in ('CORPORATE_MASTER','CREDIT_PROCESSOR_MASTER','DEBIT_PROCESSOR_MASTER','FORM_FACTOR_MASTER','GIFT_PROCESSOR_MASTER','STORE_MASTER','STORE_SETTLEMENT_MASTER','CARD_TYPE_MASTER','CHUNK_IMAGE_MASTER','COMMUNICATION_MASTER','ENTRYDATA_SOURCE_MASTER','FORM_FACTOR_TYPE_MASTER','PROCESSOR_MASTER','TIME_ZONE_MASTER','TRANSACTION_TYPE_MASTER','HSM_KEYS','CORPORATE_KEY_MASTER','DEVICE_MASTER','PROCESSOR_COUNTER_MASTER','TERMINAL_BATCH_NUMBER','RECEIPT_DETAILS_MASTER','REVERSAL_REASON_MASTER','RSA_KEY_MASTER','CUSTOMER_MASTER','CARD_TOKEN_MASTER','CARD_FRAUD_MASTER','TRANSACTION_TOKEN')
and ai.generated='N'  and ai.uniqueness='NONUNIQUE' 
order by ai.OWNER,ai.TABLESPACE_NAME,ai.TABLE_NAME,ai.INDEX_NAME



--Index Disable
select ai.OWNER,ai.TABLESPACE_NAME,ai.TABLE_NAME,ai.INDEX_NAME, 'alter index auruspay.'||INDEX_NAME||' UNUSABLE;'  UNUSABLE_INDEX from  all_indexes ai
where   table_name in ('TRANSACTION_ADDENDUM_DATA','TRANSACTIONS','DECLINED_TRANSACTIONS','TRANSACTION_EXTENSION_DATA','ECR_PRODUCT_DETAILS','CARRIER_MASTER','INSURANCE_MASTER','Image_master','batch_settlement_master','EMV_TAGS')
and generated='N'  and uniqueness='NONUNIQUE' 
order by ai.OWNER,ai.TABLESPACE_NAME,ai.TABLE_NAME,ai.INDEX_NAME

--Index Enable
select ai.OWNER,ai.TABLESPACE_NAME,ai.TABLE_NAME,ai.INDEX_NAME,'alter index auruspay.'||INDEX_NAME||' rebuild;'  REBUILD_INDEX from  all_indexes ai
where   table_name in ('TRANSACTION_ADDENDUM_DATA','TRANSACTIONS','DECLINED_TRANSACTIONS','TRANSACTION_EXTENSION_DATA','ECR_PRODUCT_DETAILS','CARRIER_MASTER','INSURANCE_MASTER','Image_master','batch_settlement_master','EMV_TAGS')
and generated='N'  and uniqueness='NONUNIQUE' 
order by ai.OWNER,ai.TABLESPACE_NAME,ai.TABLE_NAME,ai.INDEX_NAME


select status,count(status) from ALL_CONSTRAINTS where   table_name in ('TRANSACTION_ADDENDUM_DATA','TRANSACTIONS','DECLINED_TRANSACTIONS','TRANSACTION_EXTENSION_DATA','ECR_PRODUCT_DETAILS','CARRIER_MASTER','INSURANCE_MASTER','Image_master','batch_settlement_master','EMV_TAGS')
and CONSTRAINT_TYPE<>'P' group by status;

select  status,count(status) from  all_indexes
where   table_name in ('TRANSACTION_ADDENDUM_DATA','TRANSACTIONS','DECLINED_TRANSACTIONS','TRANSACTION_EXTENSION_DATA','ECR_PRODUCT_DETAILS','CARRIER_MASTER','INSURANCE_MASTER','Image_master','batch_settlement_master','EMV_TAGS')
and generated='N'  and uniqueness='NONUNIQUE' group by status



--TEMP Table Creation

create table tmp_d1 as Select TR_TRANSACTION_ID  from transactions where TR_AURUSPAY_DATE between TO_TIMESTAMP('2015-07-01 00:00:00','YYYY-MM-DD HH24:MI:SS') and TO_TIMESTAMP('2016-04-10 23:59:59','YYYY-MM-DD HH24:MI:SS')  
create table tmp_d2 as Select TR_TRANSACTION_ID  from transactions where TR_AURUSPAY_DATE between TO_TIMESTAMP('2016-04-11 00:00:00','YYYY-MM-DD HH24:MI:SS') and TO_TIMESTAMP('2016-04-30 23:59:59','YYYY-MM-DD HH24:MI:SS') //688314 

--select count(*) from tmp_d2 //select  131783 + 163500 from dual //295283
--Select count(*)  from DECLINED_TRANSACTIONS where DTR_AURUSPAY_DATE between TO_TIMESTAMP('2015-07-01 00:00:00','YYYY-MM-DD HH24:MI:SS') and TO_TIMESTAMP('2015-12-31 23:59:59','YYYY-MM-DD HH24:MI:SS') //688314 //1279317
create table tmp_dtr1 as
Select DTR_DECLINED_TRANSACTION_ID as TR_TRANSACTION_ID from DECLINED_TRANSACTIONS where DTR_AURUSPAY_DATE between TO_TIMESTAMP('2015-07-01 00:00:00','YYYY-MM-DD HH24:MI:SS') and TO_TIMESTAMP('2016-02-29 23:59:59','YYYY-MM-DD HH24:MI:SS') 
create table tmp_dtr2 as
Select DTR_DECLINED_TRANSACTION_ID as TR_TRANSACTION_ID  from DECLINED_TRANSACTIONS where DTR_AURUSPAY_DATE between TO_TIMESTAMP('2016-03-01 00:00:00','YYYY-MM-DD HH24:MI:SS') and TO_TIMESTAMP('2016-04-30 23:59:59','YYYY-MM-DD HH24:MI:SS') //688314 




--TRANSACTIONS
create table tmp_d1 as select TR_TRANSACTION_ID from auruspay.TRANSACTIONS where TR_AURUSPAY_DATE between TO_TIMESTAMP('2015-06-01 00:00:00','YYYY-MM-DD HH24:MI:SS') and TO_TIMESTAMP('2015-11-15 23:59:59','YYYY-MM-DD HH24:MI:SS')
create table tmp_d2 as select TR_TRANSACTION_ID from auruspay.TRANSACTIONS where TR_AURUSPAY_DATE between TO_TIMESTAMP('2015-11-16 00:00:00','YYYY-MM-DD HH24:MI:SS') and TO_TIMESTAMP('2016-01-31 23:59:59','YYYY-MM-DD HH24:MI:SS')

--DECLINED TRANSACTIONS
create table tmp_dtr1 as Select DTR_DECLINED_TRANSACTION_ID as TR_TRANSACTION_ID from auruspay.DECLINED_TRANSACTIONS where DTR_AURUSPAY_DATE between TO_TIMESTAMP('2015-06-01 00:00:00','YYYY-MM-DD HH24:MI:SS') and TO_TIMESTAMP('2016-01-31 23:59:59','YYYY-MM-DD HH24:MI:SS');



Select count(*)  from transactions where TR_AURUSPAY_DATE between TO_TIMESTAMP('2015-07-01 00:00:00','YYYY-MM-DD HH24:MI:SS') and TO_TIMESTAMP('2016-04-10 23:59:59','YYYY-MM-DD HH24:MI:SS') 
Select count(*)  from transactions where TR_AURUSPAY_DATE between TO_TIMESTAMP('2015-07-01 00:00:00','YYYY-MM-DD HH24:MI:SS') and TO_TIMESTAMP('2016-02-29 23:59:59','YYYY-MM-DD HH24:MI:SS') 



Select count(*) from DECLINED_TRANSACTIONS where DTR_AURUSPAY_DATE between TO_TIMESTAMP('2015-07-01 00:00:00','YYYY-MM-DD HH24:MI:SS') and TO_TIMESTAMP('2016-02-29 23:59:59','YYYY-MM-DD HH24:MI:SS') 



SELECT 'ALTER SYSTEM KILL SESSION ''' ||a.sid||','|| A.Serial#||''';',a.machine,a.username,b.sql_id,B.Sql_Fulltext,a.type,TO_CHAR(sysdate,'YYYY-MM-DD HH24:MI:SS') AS c_time,
To_Char(A.Logon_Time,'YYYY-MM-DD HH24:MI:SS') As L_Time,Round((Sysdate - A.Logon_Time)*24*60,2) Time_M FROM V$session a INNER JOIN V$sql B ON A.Sql_Id     = B.Sql_Id Where A.Status  ='ACTIVE' And A.Username In('AURUSPAY')
AND A.TYPE <> 'BACKGROUND' and (sysdate-a.Logon_Time)*24*60 > 1;



ALTER SYSTEM KILL SESSION 'SID, SERIAL#'; 
ALTER SYSTEM KILL SESSION 1716,17463;

select machine,count(*) from v$session group by machine;

ALTER SYSTEM KILL SESSION '574,10411';





ORA-02292: integrity constraint (AURUSPAY.TRANSACTIONS_FK) violated - child record found
AURUSPAY.TRANSACTIONS_FK


------Data Deletion Report.

select jh."execution_id", jh."job_name",TO_CHAR(jli."start_time",'DD-MM-YYYY HH:MI:SS.FF AM'),TO_CHAR(jli."end_time",'DD-MM-YYYY HH:MI:SS.FF AM'), 
TO_CHAR(jli."end_time"-jli."start_time",'DD-MM-YYYY HH:MI:SS.FF AM') EXECUTION_TIME 
from "job_history" jh 
inner join "job_level_info"  jli on jli."execution_id"=jh."execution_id"
where jh."job_name" in('INDEX_REBUILD_1','INDEX_REBUILD_2','INDEX_REBUILD_4','INDEX_REBUILD_3','CONSTRAIN_ENABLE','TRANSACTIONS_5','BTCH_SETL_MST_1','CARRIER_MAST_1','DECLINE_TRAN_2','IMAGE_MASTER_4','TRANSACTIONS_3','TRANSACTIONS_2','TRANSACTIONS_1','ECR_PROD_DTL_2','ECR_PROD_DTL_1','EMV_TAGS_2','EMV_TAGS_1','TRAN_EXT_DATA_2','TRAN_EXT_DATA_1','TRAN_ADD_DATA_2','TRAN_ADD_DATA_1','INSURANCE_MST_2','INSURANCE_MST_1','CARRIER_MAST_2','BTCH_SETL_MST_2','TRANSACTIONS_4','DECLINE_TRAN_1','DECLINE_TRAN_4','DECLINE_TRAN_3','IMAGE_MASTER_2','IMAGE_MASTER_1','IMAGE_MASTER_3','INDX_CONS_DISABL')
order by jh."execution_date" desc 




----Fetch Trasnaction Count
--TRASNACTIONS
select TO_CHAR(TR_AURUSPAY_DATE,'YYYY-MM') , count(*) from transactions 
group by TO_CHAR(TR_AURUSPAY_DATE,'YYYY-MM')
order by TO_CHAR(TR_AURUSPAY_DATE,'YYYY-MM')


--DECLINED TRASNACTIONS
select TO_CHAR(DTR_AURUSPAY_DATE,'YYYY-MM') , count(*) from declined_transactions 
group by TO_CHAR(DTR_AURUSPAY_DATE,'YYYY-MM')
order by TO_CHAR(DTR_AURUSPAY_DATE,'YYYY-MM')
