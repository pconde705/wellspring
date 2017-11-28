import {connect} from 'react-redux';
import Reward from './reward';
import {createReward, clearErrors} from '../../actions/reward_actions';
import {selectAllRewards} from '../../reducers/selectors';

const mapStateToProps = (state, {project_id}) => {
  return {
  errors: state.errors.reward
}};

const mapDispatchToProps = dispatch => ({
  createReward: (...reward) => dispatch(createReward(...reward)),
  clearErrors: () => dispatch(clearErrors())
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Reward);
