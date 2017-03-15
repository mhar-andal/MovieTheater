class Navbar extends React.Component {

  constructor(props) {
    super(props);

    this.state={};
  }

  render () {
    return (
      <header>
        <div className="row header">
          <div className="col-xs-8 col-md-8">
            <h1 className="head-title"><a href="/">TheMovieTheater</a></h1>
          </div>
          <div className="col-xs-4 col-md-4">
            <div className="btn-group centered">
              <button type="button" className="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <span className="glyphicon glyphicon-menu-hamburger" aria-hidden="true"></span>
              </button>
              <ul className="dropdown-menu pull-right">
                <li><a href="/cinemas">Manage Cinemas</a></li>
                <li><a href="/showings/new">Add a Showing</a></li>
                <li><a href="/orders">Display Orders</a></li>
              </ul>
            </div>
          </div>
        </div>
      </header>
    );
  }
};
