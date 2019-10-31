
<?php
session_start(); 
require "./config/database.php";
require "./models/Db.php";
require "./models/comments.php";

$comment = new Comments();
$id = $_GET['id'];


if( isset( $_SESSION['session1'])){
    echo "1";
    if(isset($_POST['submit'])){
        echo "2";
        $comment->inComment($_POST['comments'], $id, $_SESSION['session1']);
        header("Location: http://localhost:82/Nhom4/detail.php?id="."$id");
    }
}else{
    echo "3";
    ?>
     <script language="javascript">
            alert("Bạn cần đăng nhập để có thể bình luận!!!");
        </script>
    <?php
}
