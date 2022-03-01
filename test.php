<?php

$str = "<?php echo \"<script>alert('hack')</script>\" ?>";

echo htmlspecialchars(htmlentities($str));