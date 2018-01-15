import {connect} from 'react-redux'
import AllProjects from './all_projects'
import {fetchAllProjects} from '../../actions/project_actions';
import {selectAllProjects} from '../../reducers/selectors';

const mapStateToProps = state => {

  return {
    projects: selectAllProjects(state)
  }
}

const mapDispatchToProps = dispatch => ({
  fetchAllProjects: () => dispatch(fetchAllProjects())
})

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(AllProjects)
