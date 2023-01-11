DATA BUDAIRTRAFFIC (keep= TRAFFIC_ID COUNTRY DESTINATION AIRLINE CLASS ARRDEP COST DATE index=(COUNTRY));
	LENGTH TRAFFIC_ID $20 COUNTRY $30 DESTINATION $30 AIRLINE $30 CLASS $30;
	LABEL TRAFFIC_ID='TRAFFIC_ID' COUNTRY='COUNTRY' DESTINATION='DESTINATION' 
			AIRLINE='AIRLINE' CLASS='CLASS' ARRDEP='ARRIVAL_DEPARTURE';
	FORMAT DATE yymmdd10.;

	do i=1 to 867020;

		 TRAFFIC_ID = "2022_01/"||substr(trim(left(10000000+i)),2,7);

		/*COUNTRY*/
		RND=ranuni(1);
		select;
			when (RND LT 0.15) COUNTRY='United Kingdom';
			when (RND LT 0.26) COUNTRY='Italy';
			when (RND LT 0.36) COUNTRY='Germany';
			when (RND LT 0.43) COUNTRY='Spain';
			when (RND LT 0.49) COUNTRY='France';
			when (RND LT 0.53) COUNTRY='The Netherlands';
			when (RND LT 0.57) COUNTRY='Switzerland';
			when (RND LT 0.60) COUNTRY='Greece';
			when (RND LT 0.64) COUNTRY='Israel';
			when (RND LT 0.67) COUNTRY='Turkey';
			when (RND LT 0.70) COUNTRY='Poland';
			when (RND LT 0.725) COUNTRY='Belgium';
			when (RND LT 0.76) COUNTRY='Sweden';
			when (RND LT 0.785) COUNTRY='Denmark';
			when (RND LT 0.8) COUNTRY='United Arab Emirates';
			when (RND LT 0.815) COUNTRY='Cyprus';
			when (RND LT 0.83) COUNTRY='Portugal';
			when (RND LT 0.845) COUNTRY='Ireland'; 
			when (RND LT 0.855) COUNTRY='Czech Republic';
			when (RND LT 0.865) COUNTRY='Norway';
			when (RND LT 0.875) COUNTRY='Malta';
			when (RND LT 0.885) COUNTRY='Austria';
			when (RND LT 0.893) COUNTRY='Romania'; 
			when (RND LT 0.901) COUNTRY='Finland';
			when (RND LT 0.906) COUNTRY='Latvia';
			when (RND LT 0.912) COUNTRY='Qatar';
			when (RND LT 0.918) COUNTRY='Bulgaria';
			when (RND LT 0.923) COUNTRY='Jordan';
			when (RND LT 0.927) COUNTRY='Egypt';
			when (RND LT 0.931) COUNTRY='South Korea';
			when (RND LT 0.934) COUNTRY='Albania';
			when (RND LT 0.937) COUNTRY='Iceland';
			when (RND LT 0.94) COUNTRY='Lithuania';
			when (RND LT 0.943) COUNTRY='Georgia';
			when (RND LT 0.947) COUNTRY='Montenegro';
			when (RND LT 0.949) COUNTRY='Azerbaijan';
			when (RND LT 0.951) COUNTRY='Croatia';
			when (RND LT 0.96) COUNTRY='USA';
			when (RND LT 0.962) COUNTRY='Luxembourg';
			when (RND LT 0.964) COUNTRY='Moldova';
			when (RND LT 0.968) COUNTRY='North Macedonia';
			when (RND LT 0.97) COUNTRY='Kazakhstan';
			otherwise COUNTRY='China';
		end;
		
		/*DESTINATION*/
		select;
			when (COUNTRY='United Kingdom') 
				do;
					RND=ranuni(1);
					if RND < 0.1 then
						DESTINATION='EDI';
					else if RND < 0.15 then
						DESTINATION='NCL';
					else if RND < 0.2 then
						DESTINATION='LBA';
					else if RND < 0.25 then
						DESTINATION='MAN';
					else if RND < 0.35 then
						DESTINATION='LPL';
					else if RND < 0.38 then
						DESTINATION='EMA';
					else if RND < 0.40 then
						DESTINATION='BHX';
					else if RND < 0.46 then
						DESTINATION='STN';
					else if RND < 0.50 then
						DESTINATION='LTN';
					else if RND < 0.65 then
						DESTINATION='LHR';
					else if RND < 0.8 then
						DESTINATION='LGW';
					else if RND < 0.95 then
						DESTINATION='BRS';
					else
						DESTINATION='BOH';
				end;
				
				when (COUNTRY='Italy') 
					do;
						RND=ranuni(1);
						if RND < 0.15 then
							DESTINATION='MXP';
						else if RND < 0.3 then
							DESTINATION='BGY';
						else if RND < 0.35 then
							DESTINATION='TRN';
						else if RND < 0.40 then
							DESTINATION='TSF';
						else if RND < 0.45 then
							DESTINATION='BLQ';
						else if RND < 0.50 then
							DESTINATION='PSA';
						else if RND < 0.70 then
							DESTINATION='FCO';
						else if RND < 0.78 then
							DESTINATION='CIA';
						else if RND < 0.85 then
							DESTINATION='NAP';
						else if RND < 0.88 then
							DESTINATION='BRI';
						else if RND < 0.90 then
							DESTINATION='CTA';
						else if RND < 0.93 then
							DESTINATION='AHO';
						else if RND < 0.97 then
							DESTINATION='CAG';
						else
							DESTINATION='PMO';
					end;
					
				when (COUNTRY='Germany') 
					do;
						RND=ranuni(1);
						if RND < 0.1 then
							DESTINATION='HAM';
						else if RND < 0.30 then
							DESTINATION='BER';
						else if RND < 0.37 then
							DESTINATION='DTM';
						else if RND < 0.46 then
							DESTINATION='DUS';
						else if RND < 0.55 then
							DESTINATION='CGN';
						else if RND < 0.7 then
							DESTINATION='FRA';
						else if RND < 0.75 then
							DESTINATION='NUE';
						else if RND < 0.85 then
							DESTINATION='STR';
						else
							DESTINATION='MUC';
					end;
					
				when (COUNTRY='Spain') 
					do;
						RND=ranuni(1);
						if RND < 0.9 then
							DESTINATION='TFS';
						else if RND < 0.18 then
							DESTINATION='LPA';
						else if RND < 0.27 then
							DESTINATION='FUE';
						else if RND < 0.38 then
							DESTINATION='ACE';
						else if RND < 0.42 then
							DESTINATION='AGP';
						else if RND < 0.47 then
							DESTINATION='SVQ';
						else if RND < 0.50 then
							DESTINATION='ALC';
						else if RND < 0.56 then
							DESTINATION='VLC';
						else if RND < 0.65 then
							DESTINATION='MAD';
						else if RND < 0.74 then
							DESTINATION='BCN';
						else if RND < 0.83 then
							DESTINATION='IBZ';
						else if RND < 0.92 then
							DESTINATION='CDT';
						else
							DESTINATION='PMI';
					end;
					
				when (COUNTRY='France') 
					do;
						RND=ranuni(1);
						if RND < 0.1 then
							DESTINATION='MRS';
						else if RND < 0.25 then
							DESTINATION='NCE';
						else if RND < 0.5 then
							DESTINATION='BVA';
						else if RND < 0.7 then
							DESTINATION='ORY';
						else
							DESTINATION='CDG';
					end;
					
				when (COUNTRY='The Netherlands') 
					do;
						RND=ranuni(1);
						if RND < 0.6 then
							DESTINATION='AMS';
						else
							DESTINATION='EIN';
					end;
					
				when (COUNTRY='Switzerland') 
					do;
						RND=ranuni(1);
						if RND < 0.4 then
							DESTINATION='ZRH';
						else if RND < 0.8 then
							DESTINATION='BSL';
						else
							DESTINATION='GVA';
					end;
					
				when (COUNTRY='Greece') 
					do;
						RND=ranuni(1);
						if RND < 0.1 then
							DESTINATION='CFU';
						else if RND < 0.2 then
							DESTINATION='PVK';
						else if RND < 0.3 then
							DESTINATION='ZTH';	
						else if RND < 0.4 then
							DESTINATION='SKG';	
						else if RND < 0.5 then
							DESTINATION='ATH';	
						else if RND < 0.6 then
							DESTINATION='JMK';	
						else if RND < 0.7 then
							DESTINATION='JTR';	
						else if RND < 0.77 then
							DESTINATION='HER';	
						else if RND < 0.83 then
							DESTINATION='CHQ';	
						else if RND < 0.9 then
							DESTINATION='KGS';								
						else
							DESTINATION='RHO';
					end;
					
				when (COUNTRY='Israel') 
					do;
						RND=ranuni(1);
						if RND < 0.85 then
							DESTINATION='TLV';
						else
							DESTINATION='AQJ';
					end;
					
				when (COUNTRY='Turkey') 
					do;
						RND=ranuni(1);
						if RND < 0.1 then
							DESTINATION='ADB';
						else if RND < 0.4 then
							DESTINATION='IST';
						else if RND < 0.6 then
							DESTINATION='SAW';							
						else
							DESTINATION='AYT';
					end;
					
				when (COUNTRY='Poland') 
					do;
						RND=ranuni(1);
						if RND < 0.2 then
							DESTINATION='KRK';
						else if RND < 0.3 then
							DESTINATION='POZ';
						else if RND < 0.6 then
							DESTINATION='WMI';							
						else
							DESTINATION='WAW';
					end;
					
					
				when (COUNTRY='Sweden') 
					do;
						RND=ranuni(1);
						if RND < 0.7 then
							DESTINATION='ARN';
						else if RND < 0.85 then
							DESTINATION='GOT';
						else if RND < 0.95 then
							DESTINATION='MMX';							
						else
							DESTINATION='NYO';
					end;
					
				when (COUNTRY='Denmark') 
					do;
						RND=ranuni(1);
						if RND < 0.8 then
							DESTINATION='CPH';
						else
							DESTINATION='BLL';
					end;
					
				when (COUNTRY='United Arab Emirates') 
					do;
						RND=ranuni(1);
						if RND < 0.3 then
							DESTINATION='AUH';
						else
							DESTINATION='DBX';
					end;
					
				when (COUNTRY='Cyprus') 
					do;
						RND=ranuni(1);
						if RND < 0.7 then
							DESTINATION='LCA';
						else
							DESTINATION='PFO';
					end;
					
				when (COUNTRY='Portugal') 
					do;
						RND=ranuni(1);
						if RND < 0.4 then
							DESTINATION='OPO';
						else
							DESTINATION='LIS';
					end;
					
				when (COUNTRY='Ireland') 
					do;
						RND=ranuni(1);
						if RND < 0.9 then
							DESTINATION='DUB';
						else
							DESTINATION='SNN';
					end;
					
				when (COUNTRY='Czech Republic') 
					do;
						DESTINATION='PRG';
					end;
					
				when (COUNTRY='Norway') 
					do;
						DESTINATION='OSL';
					end;
					
				when (COUNTRY='Malta') 
					do;
						DESTINATION='MLA';
					end;
					
				when (COUNTRY='Austria') 
					do;
						DESTINATION='VIE';
					end;
					
				when (COUNTRY='Romania') 
					do;
						RND=ranuni(1);
						if RND < 0.65 then
							DESTINATION='OTP';
						else
							DESTINATION='TGM';
					end;
					
				when (COUNTRY='Finland') 
					do;
						DESTINATION='HEL';
					end;
					
				when (COUNTRY='Latvia') 
					do;
						DESTINATION='RIX';
					end;
					
				when (COUNTRY='Qatar') 
					do;
							DESTINATION='DOH';
					end;
					
				when (COUNTRY='Bulgaria') 
					do;
						RND=ranuni(1);
						if RND < 0.5 then
							DESTINATION='SOF';
						else
							DESTINATION='BOJ';
					end;
					
				when (COUNTRY='Jordan') 
					do;
						RND=ranuni(1);
						if RND < 0.85 then
							DESTINATION='AMM';
						else
							DESTINATION='AQJ';
					end;
					
				when (COUNTRY='Egypt') 
					do;
						RND=ranuni(1);
						if RND < 0.55 then
							DESTINATION='CAI';
						else
							DESTINATION='HRG';
					end;
					
				when (COUNTRY='South Korea') 
					do;
						DESTINATION='ICN';
					end;
					
				when (COUNTRY='Albania') 
					do;
						DESTINATION='TIA';
					end;
					
				when (COUNTRY='Iceland') 
					do;
						DESTINATION='KEF';
					end;
					
				when (COUNTRY='Lithuania') 
					do;
						DESTINATION='KUN';
					end;
					
				when (COUNTRY='Georgia') 
					do;
						RND=ranuni(1);
						if RND < 0.8 then
							DESTINATION='TBS';
						else
							DESTINATION='KUT';
					end;
					
				when (COUNTRY='Montenegro') 
					do;
						DESTINATION='TGD';
					end;
					
				when (COUNTRY='Azerbaijan') 
					do;
						DESTINATION='GYD';
					end;
					
				when (COUNTRY='Croatia') 
					do;
						DESTINATION='ZAD';
					end;
					
				when (COUNTRY='USA') 
					do;
						DESTINATION='JFK';
					end;
					
				when (COUNTRY='Luxembourg') 
					do;
						DESTINATION='LUX';
					end;
					
				when (COUNTRY='Moldova') 
					do;
						DESTINATION='KIV';
					end;
					
				when (COUNTRY='North Macedonia') 
					do;
						DESTINATION='SKP';
					end;
					
				when (COUNTRY='Belgium') 
					do;
						RND=ranuni(1);
						if RND < 0.5 then
							DESTINATION='BRU';
						else
							DESTINATION='CRL';
					end;

                when (COUNTRY='Kazakhstan') 
                    do;
                        DESTINATION='TSE';
                    end;
                    
                when (COUNTRY='China') 
                    do;
                        RND=ranuni(1);
                        if RND < 0.8 then
                            DESTINATION='PEK';
                        else
                            DESTINATION='TSN';
                    end;
			end;
			
			select;
				when (DESTINATION in ('ZAD', 'KUN', 'SOF', 'PRG', 'SNN', 'PFO', 'KRK', 'POZ', 'WMI', 'BLL', 'PVK', 'BVA', 'MRS', 'LPA', 'ACE', 'SVQ', 'VLC', 'BGY', 'TRN', 'TSF', 'PSA', 'CIA', 'PMO', 'CAG', 'AHO', 'NUE', 'BRS', 'BOH', 'STN')) 
					do;
						AIRLINE='RYANAIR';
					end;				
				when (DESTINATION in ('TSE', 'LTN', 'SKP', 'KIV', 'GYD', 'TGD', 'TBS', 'LPL', 'KUT', 'KEF', 'TIA', 'TGM', 'AQJ', 'LCA', 'NYO', 'MMX', 'AUH', 'JTR', 'HER', 'KGS', 'NCE', 'EIN', 'TFS', 'FUE', 'ALC', 'IBZ', 'CDT', 'MXP', 'FCO', 'DTM')) 
					do;
						AIRLINE='WIZZ AIR';
					end;					
				when (DESTINATION in ('CFU', 'MLA', 'LIS', 'OPO', 'GOT', 'ZTH', 'SKG', 'JMK', 'AGP', 'BLQ', 'BRI', 'CTA', 'EDI')) 
					do;
						RND=ranuni(1);
	
						if RND < 0.7 then
							AIRLINE='RYANAIR';
						else
							AIRLINE='WIZZ AIR';
					end;
				when (DESTINATION in ('CRL', 'BOJ', 'AMM', 'CHQ', 'RHO', 'BCN', 'PMI', 'NAP', 'BER'))
					do;
						RND=ranuni(1);
	
						if RND < 0.6 then
							AIRLINE='WIZZ AIR';
						else
							AIRLINE='RYANAIR';
					end;
				when (DESTINATION in ('GVA')) 
					do;
						AIRLINE='EASYJET';
					end;
				when (DESTINATION in ('HAM', 'DUS', 'STR')) 
					do;
						AIRLINE='EUROWINGS';
					end;
                when (DESTINATION = 'BRU')
                    do;
                        AIRLINE='BRUSSELS AIRLINES';
                    end;
                when (DESTINATION in ('FRA', 'MUC')) 
                    do;
                        AIRLINE='LUFTHANSA';
                    end;
                when (DESTINATION = 'CGN') 
                    do;
                        RND=ranuni(1);
                        if RND < 0.5 then
                            AIRLINE='RYANAIR';
                        else
                            AIRLINE='EUROWINGS';
                    end;

				when (DESTINATION = 'LUX')
					do;
						AIRLINE='LUXAIR';
					end;
				when (DESTINATION = 'JFK')
					do;
						AIRLINE='LOT';
					end;
				when (DESTINATION in('NCL', 'LBA'))
					do;
						AIRLINE='JET2';
					end;
				when (DESTINATION = 'OTP')
					do;
						AIRLINE='TAROM';
					end;
				when (DESTINATION = 'HEL')
					do;
						AIRLINE='FINNAIR';
					end;
				when (DESTINATION = 'DOH')
					do;
						AIRLINE='QATAR AIRWAYS';
					end;
				when (DESTINATION = 'VIE')
					do;
						AIRLINE='AUSTRIAN';
					end;
				when (DESTINATION = 'ZRH')
					do;
						AIRLINE='SWISS';
					end;
				when (DESTINATION = 'LHR')
					do;
						AIRLINE='BRITISH AIRWAYS';
					end;
				
				when (DESTINATION IN('AYT', 'ADB'))
					do;
						AIRLINE='SUNEXPRESS';
					end;
					
				when (DESTINATION = 'IST')
					do;
						AIRLINE='TURKISH AIRLINES';
					end;
					
				when (DESTINATION in ('CAI', 'HRG'))
					do;
						AIRLINE='EGYPTAIR';
					end;
					
				when (DESTINATION in ('TSN', 'PEK'))
					do;
						AIRLINE='AIR CHINA';
					end;
				when (DESTINATION = 'ICN')
					do;
						RND=ranuni(1);
	
						if RND < 0.6 then
							AIRLINE='LOT';
						else
							AIRLINE='KOREAN AIR';
					end;
				when (DESTINATION = 'RIX')
					do;
						RND=ranuni(1);
	
						if RND < 0.5 then
							AIRLINE='AIR BALTIC';
						else
							AIRLINE='RYANAIR';
					end;
				when (DESTINATION = 'CDG')
					do;
						RND=ranuni(1);
	
						if RND < 0.2 then
							AIRLINE='EASYJET';
						else
							AIRLINE='AIR FRANCE';
					end;
				when (DESTINATION = 'SAW')
					do;
						RND=ranuni(1);
	
						if RND < 0.5 then
							AIRLINE='PEGASUS';
						else
							AIRLINE='TURKISH AIRLINES';
					end;
				
				when (DESTINATION = 'DUB')
					do;
						RND=ranuni(1);
	
						if RND < 0.8 then
							AIRLINE='RYANAIR';
						else
							AIRLINE='AER LINGUS';
					end;
				when (DESTINATION in ('ARN', 'CPH'))
					do;
						RND=ranuni(1);
	
						if RND < 0.5 then
							AIRLINE='RYANAIR';
						else
							AIRLINE='NORWEGIAN';
					end;
					
				when (DESTINATION = 'OSL')
					do;
						RND=ranuni(1);
	
						if RND < 0.6 then
							AIRLINE='NORWEGIAN';
						else
							AIRLINE='WIZZ AIR';
					end;
				when (DESTINATION = 'ORY')
					do;
						RND=ranuni(1);
	
						if RND < 0.4 then
							AIRLINE='TRANSAVIA';
						else
							AIRLINE='WIZZ AIR';
					end;
					
				when (DESTINATION = 'WAW')
					do;
						RND=ranuni(1);
	
						if RND < 0.7 then
							AIRLINE='LOT';
						else
							AIRLINE='WIZZ AIR';
					end;
				when (DESTINATION = 'DBX')
					do;
						RND=ranuni(1);
	
						if RND < 0.5 then
							AIRLINE='EMIRATES';
						else if RND < 0.7 then
							AIRLINE='FLYDUBAI';
						else if RND < 0.75 then
							AIRLINE='TRANSAVIA';
						else 
							AIRLINE='WIZZ AIR';
					end;
				when (DESTINATION = 'MAN')
					do;
						RND=ranuni(1);
	
						if RND < 0.55 then
							AIRLINE='RYANAIR';
						else if RND < 0.85 then
							AIRLINE='EASYJET';
						else 
							AIRLINE='JET2';
					end;
				when (DESTINATION = 'BHX')
					do;
						RND=ranuni(1);
	
						if RND < 0.75 then
							AIRLINE='WIZZ AIR';
						else 
							AIRLINE='JET2';
					end;
				when (DESTINATION = 'EMA')
					do;
						RND=ranuni(1);
	
						if RND < 0.5 then
							AIRLINE='RYANAIR';
						else 
							AIRLINE='JET2';
					end;
				when (DESTINATION = 'AMS')
					do;
						RND=ranuni(1);
	
						if RND < 0.5 then
							AIRLINE='KLM';
						else if RND < 0.7 then
							AIRLINE='EASYJET';
						else 
							AIRLINE='TRANSAVIA';
					end;
					
				when (DESTINATION = 'TLV')
					do;
						RND=ranuni(1);
	
						if RND < 0.2 then
							AIRLINE='RYANAIR';
						else if RND < 0.4 then
							AIRLINE='WIZZ AIR';
						else if RND < 0.5 then
							AIRLINE='BLUEBIRD AIRWAYS';
						else 
							AIRLINE='EL AL';
					end;
					
				when (DESTINATION = 'ATH')
					do;
						RND=ranuni(1);
	
						if RND < 0.45 then
							AIRLINE='RYANAIR';
						else if RND < 0.55 then
							AIRLINE='AEGEAN';
						else 
							AIRLINE='WIZZ AIR';
					end;
				when (DESTINATION = 'MAD')
					do;
						RND=ranuni(1);
	
						if RND < 0.3 then
							AIRLINE='RYANAIR';
						else if RND < 0.7 then
							AIRLINE='IBERIA';
						else 
							AIRLINE='WIZZ AIR';
					end;
					
				when (DESTINATION in ('BSL','LGW'))
					do;
						RND=ranuni(1);
	
						if RND < 0.4 then
							AIRLINE='EASYJET';
						else 
							AIRLINE='WIZZ AIR';
					end;
					

				end;
				
		select;
			when(AIRLINE in ('EASYJET', 'WIZZ AIR', 'RYANAIR', 'TRANSAVIA', 'JET2', 
            'NORWEGIAN', 'PEGASUS', 'EUROWINGS'))
				do;
					RND=ranuni(1);
					COST=floor(RND*125+25);
					CLASS='ECONOMY';
				end;
when(AIRLINE in ('KOREAN AIR', 'LOT', 'EMIRATES', 'AIR CHINA'))
    do;
        RND=ranuni(1);
        RND2=ranuni(1);
        if RND < 0.6 then
            do;
                COST=floor(RND2*700+700);
                CLASS='ECONOMY';
            end;
        else if RND < 0.88 then
            do;
                COST=floor(RND2*800+1600);
                CLASS='BUSINESS';
            end;
        else
            do;
                COST=floor(RND2*2500+2500);
                CLASS='FIRST';
            end;
        end;
			otherwise
				do;
					RND=ranuni(1);
					RND2=ranuni(1);
					if RND < 0.7 then
						do;
							COST=floor(RND2*125+125);
							CLASS='ECONOMY';
						end;
					else if RND < 0.9 then
						do;
							COST=floor(RND2*450+450);
							CLASS='BUSINESS';
						end;
					else
						do;
							COST=floor(RND2*1300+1300);
							CLASS='FIRST';
						end;
				end;		
		end;

		/*SZALL_DATUM*/
		RND=ranuni(1);
		select;
			when (RND LT 0.15) mn=1;
			when (RND LT 0.30) mn=2;
			when (RND LT 0.48) mn=3;			
			when (RND LT 0.71) mn=4;
			otherwise mn=5;
		end;
        
		mn=1;

		min=1;
		u=rand('Uniform');
		select;
			when (mn in (1, 3, 5, 7, 8, 10, 12)) 
				do;
					max=31;
					dy=(min + floor((1+max-min)*u));
				end;
			when (mn in (4, 6, 9, 11)) 
				do;
					max=30;
					dy=(min + floor((1+max-min)*u));
				end;
			when (mn EQ 2) 
				do;
					max=28;
					dy=(min + floor((1+max-min)*u));
				end;
		end;
		
		DATE=MDY(mn, dy, 2022);

        RND=ranuni(1);
		if RND < 0.55 then
			ARRDEP = "DEPARTURE";
		else
			ARRDEP = "ARRIVAL";

		output;
	end;
run;
