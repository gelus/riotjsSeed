<test>
  <div class="post">
    <nav> <yield/> </nav>
    <b> Life is {multiply(i+1, 5)}</b> <small>choosen for { opts.username }</small>
    <pre>{ post.text }</pre>
  </div>

  <style scoped type=less>
    nav {
      float: left;
    }
    .post {
      padding: 10px;
      border-bottom: solid 1px grey;

      &::after {
        content: "";
        display: block;
        clear: both;
      }
    }
  </style>

  <script type=babel>
    this.mixin('myMixin');
  </script>
</test>
