<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Assignment Reviewed Successfully</title>
</head>
<body>
    <h2>Assignment reviewed successfully!</h2>
    <p><strong>Assignment File Name:</strong> ${assignment.fileName}</p>
    <p><strong>Reviewed By:</strong> ${assignment.reviewedBy}</p>
    <p><strong>Status:</strong> ${assignment.status}</p>
    <a href="/assignments/review/${assignment.id}">Review Another Assignment</a>
</body>
</html>
