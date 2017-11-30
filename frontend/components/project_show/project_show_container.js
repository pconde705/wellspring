import {connect} from 'react-redux';
import ProjectShow from './project_show';
import {fetchSingleProject} from '../../actions/project_actions';
import {createProjectBackers, createRewardBackers} from '../../actions/backer_actions';

const mapStateToProps = (state, ownProps) => {
  // console.log("state:", state);
  // console.log("ownProps:", ownProps);
  return {
    // rewards: state.projects[ownProps.match.params.id].rewards,
    project: state.projects[ownProps.match.params.id],
    currentUser: state.session.currentUser,
}};
//  Ask about undefined, and why it needs to load twice before getting the data

const mapDispatchToProps = dispatch => ({
  fetchSingleProject: (id) => dispatch(fetchSingleProject(id)),
  createProjectBackers: (project) => dispatch(createProjectBackers(project)),
  // createRewardBackers: (reward) => dispatch(createRewardBackers(reward))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(ProjectShow);

//ownProps gives us access to match history and params, and any props that are passed down into this component
