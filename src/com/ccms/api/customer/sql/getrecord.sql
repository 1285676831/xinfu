select c.enddate,c.cardtype from cc_card  c
LEFT JOIN cc_cardtype ctype on c.cardtype=ctype.code
LEFT JOIN cc_cardcategory cgory on ctype.cardcategory=cgory.code
left join t_union cunion on cgory.union_id=cunion.tuid and cunion.status=1
where c.customercode=${fld:uid} and  (case when ${fld:org_id}=${fld:membersOrgId} then c.org_id=${fld:org_id}
 else cunion.tuid is not NULL
 end) and c.isgoon=0 and c.status =1 and c.code=${fld:membersCardcode} 
 and exists(
			select 1 from cc_cardcode cc
			where cc.cardcode = c.code and c.org_id = c.org_id
		)