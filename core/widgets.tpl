{include file='header.tpl'}
<body class="hold-transition sidebar-mini">
<div class="wrapper">
    {include file='navbar.tpl'}
    {include file='sidebar.tpl'}

    <div class="content-wrapper">
        <div class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1 class="m-0 text-dark">{$WIDGETS}</h1>
                    </div>
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="{$PANEL_INDEX}">{$DASHBOARD}</a></li>
                            <li class="breadcrumb-item active">{$LAYOUT}</li>
                            <li class="breadcrumb-item active">{$WIDGETS}</li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>

        <!-- Main content -->
        <section class="content">
            <div class="container-fluid">
                {include file='includes/update.tpl'}

                <div class="card">
                    <div class="card-body">

                        {include file='includes/success.tpl'}

                        {include file='includes/errors.tpl'}

                        {foreach from=$WIDGETS_LIST item=widget name=widget_list}
                            <div class="row">
                                <div class="col-md-9">
                                    <strong>{$widget.name}</strong> <small>{$widget.module}</small>
                                    <br />
                                    <small>{$widget.description}</small>
                                </div>
                                <div class="col-md-3">
                                    <div class="float-md-right">
                                        {if $widget.enabled}
                                            <a href="{$widget.disable_link}" class="btn btn-danger">{$DISABLE}</a>
                                            <a href="{$widget.settings_link}" class="btn btn-primary">{$EDIT}</a>
                                        {else}
                                            <a href="{$widget.enable_link}" class="btn btn-success">{$ENABLE}</a>
                                        {/if}
                                    </div>
                                </div>
                            </div>

                            {if not $smarty.foreach.widget_list.last}<hr />{/if}
                        {/foreach}

                    </div>
                </div>

                <!-- Spacing -->
                <div style="height:1rem;"></div>

            </div>
        </section>
    </div>

    {include file='footer.tpl'}

</div>
<!-- ./wrapper -->

{include file='scripts.tpl'}

</body>
</html>