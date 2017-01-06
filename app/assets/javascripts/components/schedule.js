this.Schedule = React.createClass({
  render: function() {
    return React.DOM.tr(null, React.DOM.td(null, this.props.schedule.end_time_class), React.DOM.td(null, this.props.schedule.start_time_class), React.DOM.td(null, amountFormat(this.props.schedule.id_of_week)));
  }
});
