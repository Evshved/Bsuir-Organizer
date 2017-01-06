this.Schedules = React.createClass({
  render: function() {
    var schedule;
    return React.DOM.div({
      className: 'schedule'
    }, React.DOM.h2({
      className: 'title'
    }, 'Schedules'), React.DOM.table({
      className: 'table table-bordered'
    }, React.DOM.thead(null, React.DOM.tr(null, React.DOM.th(null, 'Date'), React.DOM.th(null, 'Title'), React.DOM.th(null, 'Amount'))), React.DOM.tbody(null, (function() {
      var i, len, ref, results;
      ref = this.state.schedule;
      results = [];
      for (i = 0, len = ref.length; i < len; i++) {
        schedule = ref[i];
        results.push(React.createElement(Schedule), {
          key: schedule.id,
          schedule: schedule
        });
      }
      return results;
    }).call(this))));
  }
});
