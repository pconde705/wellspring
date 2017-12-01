import {connect} from 'react-redux';
import Statistics from './statistics';
import {fetchAllProjectsCount, fetchAllFundedProjects, fetchAllBackers} from '../../actions/stats_actions';

const mapStateToProps = (state, ownProps) => {
  return{
    funded: state.stats.funded_count,
    projects: state.stats.project_count,
    backers: state.stats.backers_count
}};

const mapDispatchToProps = dispatch => ({
  fetchAllProjectsCount: () => dispatch(fetchAllProjectsCount()),
  fetchAllFundedProjects: () => dispatch(fetchAllFundedProjects()),
  fetchAllBackers: () => dispatch(fetchAllBackers())
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Statistics);
