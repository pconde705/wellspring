import {connect} from 'react-redux';
import {createProjectBackers} from '../../actions/backer_actions';
import Backer from './backer';

const mapStateToProps = (state, ownProps) => {
  // debugger;
  return {
    currentUser: state.session.currentUser
  };
};

const mapDispatchToProps = dispatch => ({
  createProjectBackers: (project) => dispatch(createProjectBackers(project)),
  // editProjectRewards: (...reward) => dispatch(editProjectRewards(...reward))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Backer);
