import React from 'react';

class ProjectShow extends React.Component {

  componentDidMount() {
    this.props.fetchSingleProject(this.props.match.params.id)
  }
  //
  // componentWillReceiveProps(nextProps) {
  //   if (this.props.match.params.id !== nextProps.match.params.id) {
  //     this.props.fetchSingleProject(nextProps.match.params.id)
  //   }
  // }

  render () {
    // console.log(this.props.project.undefined);
    if (this.props.project.undefined === undefined) {
      return ("")
    } else {
      return (
        <h1>
          {this.props.project.undefined.projects.title}
        </h1>
      )

    }
  }
}

export default ProjectShow;
