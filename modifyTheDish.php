<?php

include_once 'db_configuration.php';

if (isset($_POST['id'])){

    $id = mysqli_real_escape_string($db, $_POST['id']);
    $name = mysqli_real_escape_string($db, $_POST['name']);
    $creator_name = mysqli_real_escape_string($db, $_POST['creator_name']);
    $author_name = mysqli_real_escape_string($db, $_POST['author_name']);
    $book_name = mysqli_real_escape_string($db, $_POST['book_name']);
    $puzzle_image = mysqli_real_escape_string($db, $_POST['puzzle_image']);
    $solution_image = mysqli_real_escape_string($db, $_POST['solution_image']);
    $notes = mysqli_real_escape_string($db, $_POST['notes']);
    $oldimage = mysqli_real_escape_string($db, $_POST['oldimage']);
    $imageName = basename($_FILES["fileToUpload"]["name"]);
    $validate = true;
    $validate = emailValidate($answer);


    if(true){

        if($imageName != ""){
            $target_dir = "Images/$topic/";
            $target_file = $target_dir . basename($_FILES["fileToUpload"]["name"]);
            $uploadOk = 1;
            unlink($oldimage);
            $imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));
            // Check if image file is a actual image or fake image
            if(isset($_POST["submit"])) {
                $check = getimagesize($_FILES["fileToUpload"]["tmp_name"]);
                if($check !== false) {
                    $uploadOk = 1;
                } else {
                    header('location: modifyQuestion.php?modifyQuestion=fileRealFailed');
                    $uploadOk = 0;
                }
            }
            // Check if file already exists
            if (file_exists($target_file)) {
                header('location: modifyQuestion.php?modifyQuestion=fileExistFailed');
                $uploadOk = 0;
            }

            // Allow certain file formats
            if($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg"
            && $imageFileType != "gif" ) {
                header('location: modifyQuestion.php?modifyQuestion=fileTypeFailed');
                $uploadOk = 0;
            }
            // Check if $uploadOk is set to 0 by an error
            if ($uploadOk == 0) {

            // if everything is ok, try to upload file
            } else {
                if (move_uploaded_file($_FILES["fileToUpload"]["tmp_name"], $target_file)) {
                        echo $target_file;
                    $sql = "UPDATE questions
                    SET topic = '$topic',
                        question = '$question',
                        choice_1 = '$choice1',
                        choice_2 = '$choice2',
                        choice_3 = '$choice3',
                        choice_4 = '$choice4',
                        answer = '$answer',
                        image_name = '$target_file'

                    WHERE id = '$id'";

                    mysqli_query($db, $sql);
                    header('location: questions_list.php?questionUpdated=Success');
                    }
                }
        }
                else{

                $image = $_SESSION["image"];

                $sql = "UPDATE gpuzzles
                SET name = '$name',
                    creator_name = '$creator_name',
                    book_name = '$book_name',
                    author_name = '$author_name',
                    Notes = '$notes'

                WHERE id = '$id'";

                mysqli_query($db, $sql);

                header('location: puzzle_list.php?questionUpdated=Success');
                }
    }else{
        header('location: modifyQuestion.php?modifyQuestion=answerFailed&id='.$id);}
}//end if

function emailValidate($answer){
    return true;
}

?>
