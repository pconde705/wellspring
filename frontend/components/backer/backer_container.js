import {connect} from 'react-redux';
import {editProjectBackers, editProjectRewards} from '../../actions/backer_actions';
import Backer from './backer';

const mapStateToProps = (state, ownProps) => {
  // debugger;
  return {
    currentUser: state.session.currentUser
  };
};

const mapDispatchToProps = dispatch => ({
  editProjectBackers: (project) => dispatch(editProjectBackers(project)),
  editProjectRewards: (...reward) => dispatch(editProjectRewards(...reward))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Backer);
