﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace resllerUserB
{
    public partial class sms_temp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                string eventTarget = Request["__EVENTTARGET"];
                string eventArgument = Request["__EVENTARGUMENT"];

                if (!string.IsNullOrEmpty(eventTarget))
                {
                    if (eventTarget == "DeleteTemplate")
                    {
                        // Handle the delete action
                        DeleteTemplate(eventArgument);
                    }
                }
            }
        }
        private void DeleteTemplate(string TemplateID)
        {
            string script = $"toastr.success(\"Template: {TemplateID} has been deleted!\");";
            ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
            return;
        }

        protected void savetempbtn_Click(object sender, EventArgs e)
        {
            string script;

            if (temp_name.Value.Trim() == "")
            {
                script = "toastr.error(\"Please enter template name\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }

            if (temp_msg.Value.Trim() == "")
            {
                script = "toastr.error(\"Please enter template message body\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }

            script = "  toastr.success(\"Template saved Successfully!\");";
            ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
            return;
        }
    }
}