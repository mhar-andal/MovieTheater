class Movie extends React.Component {
  constructor(props) {
    super(props);

    this.state = { movies } = this.props;
  }



  render () {
    return (
      <div className="container">
        <div className="left"></div>
        <div className="middle"></div>
        <div className="right"></div>
      </div>

    )
  }
};

Navbar.propTypes = {
  movies: React.PropTypes.object
}
