<?

    function find_rotations($arr) {
        $n = count($arr);
        for ($i = 0; $i < $n - 1; $i++) {
            if ($arr[$i] > $arr[$i + 1]) {
                return $i;
            }
        }
        return 0;
    }

    $example_array = [2,3,4,5,6];
    $rotations = find_rotations($example_array);

    echo "Number of rotations: " . $rotations . "\n";

?>

