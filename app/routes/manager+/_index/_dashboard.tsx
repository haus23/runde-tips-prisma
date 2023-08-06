import { type LoaderArgs } from "@remix-run/node";
import { authenticator } from "~/utils/server/auth.server";

export async function loader({ request }: LoaderArgs) {
  await authenticator.isAuthenticated(request, {
    failureRedirect: "/login",
  });
}

export default function ManagerDashboardRoute() {
  return (
    <div>
      <h2>Dashboard</h2>
    </div>
  );
}
