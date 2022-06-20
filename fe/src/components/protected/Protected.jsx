import { Redirect } from "react-router-dom";

// import { useNavigate } from "react-router-dom";
const Protected = ({ isLoggedIn, children }) => {
	// const navigate = useNavigate();
	if (!isLoggedIn) {
		return <Redirect to={{ pathname: "/" }} />;
	}
	return children;
};
export default Protected;
