
 <form action="/articles/#{@article.id}" method="POST">
 <input id="hidden" type="hidden" name="_method" value="patch">
 <label for="title">Title:</label>
 <input type="text" id="title" name="title">
 <label for="content">Content:</label>
 <input type="text" id="content" name="content">
 <input type="submit" value="submit">
 </form>
