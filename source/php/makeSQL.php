<?php
// makeSQL.php
/***********************************************
* Created:            Jan 3, 2013 2:24:12 PM
* Last Modified:      Jan 3, 2013 2:24:12 PM
*
* [LEFT BLANK FOR PROGRAM DISCRIPTION]
*
* Mike Browne - phelandhu@gmail.com
***********************************************/
		$nuDb = mysql_connect('lvcgdb-zp2', 'mbrowne', 'zae6Ieth');
		mysql_select_db('cdb');
		
		$nuSQL = "SELECT ei.external_id
					FROM customer c
					JOIN external_id ei ON ei.customer_id = c.customer_id
					WHERE ei.classifier = 'lvs' AND ei.system_code = 'csb'
					AND c.created_user IN('TVjirlanda@lvs', 'TVdpoucher@lvs', 'tcrostic@lvs',
						'dmiltenberger@lvs', 'iepstein@lvs', 'jlewis@lvs', 'jadams@lvs', 
					    'sosborne@lvs', 'rsoudbakhsh@lvs', 'groberts@lvs', 'owashington@lvs',
					    'dmagnotta@lvs', 'probb@lvs', 'prob@lvs')
					ORDER BY c.created ASC;";
		$nuResult = mysql_query($nuSQL);
		$data_str = null;

		while($row = mysql_fetch_array($nuResult, MYSQL_ASSOC)) {
			$data_str .= sprintf("'%s', ", $row["external_id"]);
		}
		$data_str = substr($data_str, 0, strlen($data_str) -2);
		mysql_free_result($nuResult);
		mysql_close($nuDb);

		$sql1 = sprintf("SELECT COUNT(bet_id), SUM(stake), SUM(hold)
				FROM (
					SELECT DISTINCT b.bet_id, b.stake,
				    CASE WHEN b.bet_status = 2 THEN stake - to_win
				         WHEN b.bet_status = 1 THEN stake
				         ELSE 0 END AS 'Hold',
					ag.group_name AS 'location'
					FROM wagerplayer.bet b
					JOIN wagerplayer.customers c ON c.customers_id = b.customers_id
					JOIN wagerplayer.bet_market_prices bmp ON bmp.bet_id = b.bet_id
					JOIN wagerplayer.auth_groups ag ON ag.group_id = b.office_id
					WHERE b.bet_date_finished between ((curdate() - INTERVAL 1 DAY) + INTERVAL 2 HOUR) AND (select curdate() + INTERVAL 1 Hour + INTERVAL 59 Minute + INTERVAL 59 Second) AND b.bet_status in(1,2,6) AND c.customers_username in(%s))
					AS result
				GROUP BY location", $data_str);

		$sql2 = sprintf("SELECT COUNT(bet_id), SUM(stake), SUM(hold)
				FROM (
					SELECT DISTINCT b.bet_id, b.stake,
				    CASE WHEN b.bet_status = 2 THEN stake - to_win
				         WHEN b.bet_status = 1 THEN stake
				         ELSE 0 END AS 'Hold',
					ag.group_name AS 'location'
					FROM wagerplayer.bet b
					JOIN wagerplayer.customers c ON c.customers_id = b.customers_id
					JOIN wagerplayer.bet_market_prices bmp ON bmp.bet_id = b.bet_id
					JOIN wagerplayer.auth_groups ag ON ag.group_id = b.office_id
					WHERE b.bet_date_finished BETWEEN 
            CASE WHEN day(curdate()) = 1 then curdate() - INTERVAL 1 MONTH + INTERVAL 2 HOUR
            ELSE curdate() - INTERVAL (DAY(curdate()) - 1) DAY + INTERVAL 2 HOUR
            END
            AND curdate() + INTERVAL 1 Hour + INTERVAL 59 Minute + INTERVAL 59 Second AND
            b.bet_status IN(1,2,6) AND
            c.customers_username IN(%s))
					AS result
				GROUP BY location", $data_str);
		
		$sql3 = sprintf("SELECT COUNT(bet_id), SUM(stake), SUM(hold)
				FROM (
					SELECT DISTINCT b.bet_id, b.stake,
				    CASE WHEN b.bet_status = 2 THEN stake - to_win
				         WHEN b.bet_status = 1 THEN stake
				         ELSE 0 END AS 'Hold',
					ag.group_name AS 'location'
					FROM wagerplayer.bet b
					JOIN wagerplayer.customers c ON c.customers_id = b.customers_id
					JOIN wagerplayer.bet_market_prices bmp ON bmp.bet_id = b.bet_id
					JOIN wagerplayer.auth_groups ag ON ag.group_id = b.office_id
					WHERE b.bet_date_finished BETWEEN '2013-01-01 02:00:00' AND curdate() + INTERVAL 1 Hour + INTERVAL 59 Minute + INTERVAL 59 Second and
						b.bet_status IN(1,2,6) AND
						c.customers_username IN(%s))
					AS result
				GROUP BY location", $data_str);
		
		echo $sql;
		file_put_contents("/tmp/sql.txt", $sql1 . "\n\n" . $sql2 . "\n\n" . $sql3);
		
		
		
		
		
		