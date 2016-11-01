<demo>
  <button class="lazyButton" onclick={ addNewPost }>Lazy load Test</button>
  <h3>My Feed: { greet("Steve") }</h3>
  <test each={post, i in test } username="Bob">
    <ul>
      <li>save for {opts.username}</li>
      <li>jump to top</li>
      <li>jump in the line</li>
    </ul>
  </test>

  <style scoped type=less>
    @import "less/_vars";

    ul {
      border: @light-blue solid 2px;
      margin: 0 10px 0 10px;
      padding: 10px;
      list-style: none;
    }

    .lazyButton {
      float: right;
    }
  </style>

  <script type="babel">
    this.mixin('myMixin');

    this.addNewPost = function(){
      this.lazyLoad().then(function(lazy){
        this.test.push(lazy.getPost());
        this.update();
      }.bind(this));
    }

    this.test = [
      {text: 'Six witches switched some switches.'},
      {text: 'With winter weather wander wither'},
      {text: 'Two times two is not what you think'},
      {text: 'If I had a penny for every dollar...'},
      {text: 'Your skin makes me cry...'}
    ];
  </script>
</demo>
