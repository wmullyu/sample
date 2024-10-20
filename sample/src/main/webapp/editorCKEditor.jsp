<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>CKEditor의 Feature-rich editor</title>
		<script src="https://cdn.ckeditor.com/ckeditor5/39.0.0/classic/ckeditor.js"></script>
	</head>
	<body>
		<form>
			<textarea name="content" id="editor"></textarea>
		</form>
		<script>
		    ClassicEditor
		        .create(document.querySelector('#editor'), {
		            toolbar: [
		                'heading', '|',
		                'bold', 'italic', 'link', 'bulletedList', 'numberedList', 'blockQuote', '|',
		                'insertTable', 'mediaEmbed', '|',
		                'undo', 'redo'
		            ],
		            heading: {
		                options: [
		                    { model: 'paragraph', title: 'Paragraph', class: 'ck-heading_paragraph' },
		                    { model: 'heading1', view: 'h1', title: 'Heading 1', class: 'ck-heading_heading1' },
		                    { model: 'heading2', view: 'h2', title: 'Heading 2', class: 'ck-heading_heading2' }
		                ]
		        	}
		        })
		        .catch(error => {
		            console.error(error);
		        });
		</script>
	</body>
</html>