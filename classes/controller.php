<?php

/**
*  Lets get data and connect to databse with PDO
*/
class Controller
{
	private $pdo;
	
	function __construct($dsn, $db_user, $db_pass)
	{
		try {

		$this->pdo = new PDO($dsn, $db_user, $db_pass);
		$this->pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

		} catch (PDOException $e) {

    	echo 'Connection failed: ' . $e->getMessage();

		}
	}

	public function getData () 
	{
		try {

			$results = $this->pdo->prepare("SELECT * FROM ski_jumpers");
			$results->execute(); 

			$table = array();
			$table['cols'] = array(
    			array('label' => 'country', 'type' => 'string'),
    			array('label' => 'players', 'type' => 'number')
				);

			$rows = array();

			while($row = $results->fetch(PDO::FETCH_ASSOC))	{

			$temp = array();
   
    		$temp[] = array('v' => (string) $row['country']); 


    		$temp[] = array('v' => (int) $row['players']); 
   			$rows[] = array('c' => $temp);
			}

			$table['rows'] = $rows;
			$jsonTable = json_encode($table);

			echo $jsonTable;

		} catch (PDOException $e) {
		    print "Error!: " . $e->getMessage() . "<br/>";
		    die();
		}    
	}

	public function insertData() 
	{
		$country = $_POST['country'];
		$players = $_POST['players'];

		try {

			$result = $this->pdo->prepare("INSERT INTO ski_jumpers (country, players) VALUES ('$country', '$players')");

			$result->execute(); 

		} catch (PDOException $e) {
		    print "Error!: " . $e->getMessage() . "<br/>";
		    die();
		}   
	}

}

?>