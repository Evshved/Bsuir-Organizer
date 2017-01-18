class RenderTable extends React.Component {
  render () {
    return (
        <div className="Weekday">
          {this.props.text}
        </div>,
        <div className="Time">
          {this.props.text}
        </div>,
        <div className="Subject">
          {this.props.text}
        </div>,
        <div className="TypeOfSubject">
          {this.props.text}
        </div>,
        <div className="Subgroup">
          {this.props.text}
        </div>,
        <div className="Class">
          {this.props.text}
        </div>,
        <div className="Teacher">
          {this.props.text}
        </div>,
        <div className="CountingWorkingHours">
          {this.props.text}
        </div>,
        <div className="Note">
          {this.props.text}
        </div>
    );
  }
}

var myVar;

function myFunction() {
    myVar = setTimeout(showPage, 1000);
}

function showPage() {
  document.getElementById("loader").style.display = "none";
  document.getElementById("scheduleSheet").style.display = "block";
}
