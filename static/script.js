document.addEventListener('DOMContentLoaded', function () {
    var copyButtons = document.querySelectorAll('.copy');

    copyButtons.forEach(function (button) {
        button.addEventListener('click', function () {
            var targetId = button.getAttribute('data-clipboard-target');
            var codeSnippet = document.querySelector(targetId);

            // Create a range to select the code snippet
            var range = document.createRange();
            range.selectNode(codeSnippet);
            window.getSelection().removeAllRanges();
            window.getSelection().addRange(range);

            // Copy the selected code to the clipboard
            document.execCommand('copy');

            // Deselect the code snippet
            window.getSelection().removeAllRanges();

            // Change the button text to indicate successful copying
            button.textContent = 'Copied!';
            setTimeout(function () {
                button.textContent = 'Copy Code';
            }, 200); // Reset the button text after 2 seconds
        });
    });
});
