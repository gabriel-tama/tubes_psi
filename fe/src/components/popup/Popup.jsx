import React from "react";
import "./popup.css";
import Login from "../login/Login";
const Popup = (props) => {
	return props.trigger ? (
		<div className="popup">
			<div className="popup-inner">
				{/* {props.children} */}
				<Login trigger={props.trigger} setTrigger={props.setTrigger} />
				<button className="close-btn" onClick={() => props.setTrigger(false)}>
					<i className="fa fa-times fa-3x"></i>
				</button>
			</div>
		</div>
	) : (
		""
	);
};

export default Popup;
