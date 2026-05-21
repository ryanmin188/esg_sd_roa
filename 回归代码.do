estpost summarize 资产收益率A sd_ESG_in Size 流动比率 Age ESG评级机构个数 Cash Lev Growth PPE 
esttab using "C:\Users\26649\Desktop\描述性统计.rtf", cells("mean(fmt(%9.3f)) sd(fmt(%9.3f)) min(fmt(%9.3f)) max(fmt(%9.3f))") label nomtitle nonumber noobs replace


reghdfe 资产收益率A sd_ESG_in , absorb(Stkcd Year) vce(cluster Stkcd)
estimates store m1
reghdfe 资产收益率A sd_ESG_in Size 流动比率 Age ESG评级机构个数 Cash Lev Growth PPE , absorb(Stkcd Year) vce(cluster Stkcd)
esttab m1 m2 using C:\Users\26649\Desktop\1.rtf, b(%12.3f) se(%12.3f) r2  compress

reghdfe 资产收益率A sd_ESG Size 流动比率 Age ESG评级机构个数 Cash Lev Growth PPE , absorb(Stkcd Year) vce(cluster Stkcd)

reghdfe 托宾Q值D sd_ESG_in Size 流动比率 Age ESG评级机构个数 Cash Lev Growth PPE , absorb(Stkcd Year) vce(cluster Stkcd)
reghdfe 每股收益 sd_ESG_in Size 流动比率 Age ESG评级机构个数 Cash Lev Growth PPE , absorb(Stkcd Year) vce(cluster Stkcd)

reghdfe 资产收益率A sd_ESG_in Size 流动比率 Age ESG评级机构个数 Cash Lev Growth PPE , absorb(Stkcd Year Industry) vce(cluster Stkcd)

reghdfe 资产收益率A sd_ESG_in Size 流动比率 Age ESG评级机构个数 Cash Lev Growth PPE , absorb(Stkcd Year Year#IND) vce(cluster Stkcd)


reghdfe 资产收益率A c.sd_ESG_in##c.InsInvestorProp机构投资者持股比例相对总股本 Size 流动比率 Age ESG评级机构个数 Cash Lev Growth PPE , absorb(Stkcd Year ) vce(cluster Stkcd)

reghdfe 资产收益率A c.sd_ESG_in##c.Big41代表是 Size 流动比率 Age ESG评级机构个数 Cash Lev Growth PPE , absorb(Stkcd Year ) vce(cluster Stkcd)

reghdfe 资产收益率A c.sd_ESG_in##c.ESG_potential Size 流动比率 Age ESG评级机构个数 Cash Lev Growth PPE , absorb(Stkcd Year) vce(cluster Stkcd)

reghdfe sd_ESG_in SSIV  Size 流动比率 Age ESG评级机构个数 Cash Lev Growth PPE , absorb(Stkcd Year) vce(cluster Stkcd)
outreg2 using result.doc, replace tstat bdec(4) tdec(4) ctitle(111)

ivreghdfe 资产收益率A ( sd_ESG_in = SSIV) Size 流动比率 Age ESG评级机构个数 Cash Lev Growth PPE, absorb( Stkcd Year ) vce(cluster Stkcd) first
outreg2 using result.doc, append tstat bdec(4) tdec(4) ctitle(222)

