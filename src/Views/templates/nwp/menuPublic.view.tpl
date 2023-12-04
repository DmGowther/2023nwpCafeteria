<br><br><br>
<hr class="border-2 border-danger">
<div class="grid-cols-1 sm:grid md:grid-cols-4">
    {{foreach menuPublic}}
    <!-- Card -->
        <div class="mx-3 mt-6 flex flex-col rounded-lg border-2 border-danger bg-slate-50 shadow-xl dark:bg-neutral-700 text-center sm:shrink-0 sm:grow sm:basis-0">
            <!-- Card image -->
                <img class="rounded-t-lg" src="/{{BASE_DIR}}/public/nwp/img/menu/espresso.jpg" alt="Imagen de {{image}}" loading="lazy">
            <!-- Card header -->
            <div class="border-b-2 border-neutral-100 px-6 py-4 dark:border-neutral-500">
                <h5 class="flex items-center justify-center text-neutral-500 dark:text-neutral-300">
                        <span class="mr-2 text-green-700 font-bold">
                            L. {{price}}
                        </span>
                    <span class="inline-block whitespace-nowrap rounded-[0.27rem] bg-blue-100 px-[0.65em] pb-[0.25em] pt-[0.35em] text-center align-baseline text-[0.75em] font-bold leading-none text-red-700">
                            {{categoriesName}}
                        </span>
                </h5>
            </div>

            <!-- Card body -->
            <div class="p-6">

                <!-- Title -->
                <h5 class="mb-2 text-xl font-bold tracking-wide text-neutral-800 dark:text-neutral-50">
                    {{name}}
                </h5>

                <!-- Button cart-->
                <a href="#" class="mt-3 inline-block rounded bg-danger-600 px-6 pb-2 pt-2.5 text-xs font-medium uppercase leading-normal text-white shadow-[0_4px_9px_-4px_#9b1334] transition duration-150 ease-in-out hover:bg-danger-500 hover:shadow-[0_8px_9px_-4px_rgba(155, 19, 52,0.3),0_4px_18px_0_rgba(155, 19, 52,0.2)] focus:bg-danger-800 focus:shadow-[0_8px_9px_-4px_rgba(155, 19, 52,0.3),0_4px_18px_0_rgba(155, 19, 52,0.2)] focus:outline-none focus:ring-0 active:bg-danger-700 active:shadow-[0_8px_9px_-4px_rgba(155, 19, 52,0.3),0_4px_18px_0_rgba(155, 19, 52,0.2)] dark:shadow-[0_4px_9px_-4px_rgba(155, 19, 52,0.5)] dark:hover:shadow-[0_8px_9px_-4px_rgba(155, 19, 52,0.2),0_4px_18px_0_rgba(155, 19, 52,0.1)] dark:focus:shadow-[0_8px_9px_-4px_rgba(155, 19, 52,0.2),0_4px_18px_0_rgba(155, 19, 52,0.1)] dark:active:shadow-[0_8px_9px_-4px_rgba(155, 19, 52,0.2),0_4px_18px_0_rgba(155, 19, 52,0.1)]">
                    Añadir al carrito
                </a>


                <!--Button trigger vertically centered scrollable modal-->
                <a href="#" class="mt-3 inline-block rounded bg-info px-6 pb-2 pt-2.5 text-xs font-medium uppercase leading-normal text-white shadow-[0_4px_9px_-4px_#3b71ca] transition duration-150 ease-in-out hover:bg-primary-600 hover:shadow-[0_8px_9px_-4px_rgba(59,113,202,0.3),0_4px_18px_0_rgba(59,113,202,0.2)] focus:bg-primary-600 focus:shadow-[0_8px_9px_-4px_rgba(59,113,202,0.3),0_4px_18px_0_rgba(59,113,202,0.2)] focus:outline-none focus:ring-0 active:bg-primary-700 active:shadow-[0_8px_9px_-4px_rgba(59,113,202,0.3),0_4px_18px_0_rgba(59,113,202,0.2)] dark:shadow-[0_4px_9px_-4px_rgba(59,113,202,0.5)] dark:hover:shadow-[0_8px_9px_-4px_rgba(59,113,202,0.2),0_4px_18px_0_rgba(59,113,202,0.1)] dark:focus:shadow-[0_8px_9px_-4px_rgba(59,113,202,0.2),0_4px_18px_0_rgba(59,113,202,0.1)] dark:active:shadow-[0_8px_9px_-4px_rgba(59,113,202,0.2),0_4px_18px_0_rgba(59,113,202,0.1)]" data-te-toggle="modal" data-te-target="#exampleModalCenteredScrollable" data-te-ripple-init data-te-ripple-color="light">
                    Ver
                </a>

                <!--Verically centered scrollable modal-->
                <div data-te-modal-init class="fixed left-0 top-0 z-[1055] hidden h-full w-full overflow-y-auto overflow-x-hidden outline-none" id="exampleModalCenteredScrollable" tabindex="-1" aria-labelledby="exampleModalCenteredScrollableLabel" aria-modal="true" role="dialog">

                    <div data-te-modal-dialog-ref class="pointer-events-none relative flex min-h-[calc(100%-1rem)] w-auto translate-y-[-50px] items-center opacity-0 transition-all duration-300 ease-in-out min-[576px]:mx-auto min-[576px]:mt-7 min-[576px]:min-h-[calc(100%-3.5rem)] min-[576px]:max-w-[500px]">
                        <div class="pointer-events-auto relative flex w-full flex-col rounded-md border-none bg-white bg-clip-padding text-current shadow-lg outline-none dark:bg-neutral-600">
                            <div class="flex flex-shrink-0 items-center justify-between rounded-t-md border-b-2 border-neutral-100 border-opacity-100 p-4 dark:border-opacity-50">
                                <!--Modal title-->
                                <h5 class="text-xl font-medium leading-normal text-neutral-800 dark:text-neutral-200" id="exampleModalCenteredScrollableLabel">
                                    {{name}}
                                </h5>
                                <!--Close button-->
                                <button type="button" class="box-content rounded-none border-none hover:no-underline hover:opacity-75 focus:opacity-100 focus:shadow-none focus:outline-none" data-te-modal-dismiss aria-label="Close">
                                    <svg class="svgC" xmlns="http://www.w3.org/2000/svg" height="1.5em" viewBox="0 0 384 512">
                                        <style>
                                            .svgC {
                                                fill: #dc4c64
                                            }
                                        </style>
                                        <path d="M342.6 150.6c12.5-12.5 12.5-32.8 0-45.3s-32.8-12.5-45.3 0L192 210.7 86.6 105.4c-12.5-12.5-32.8-12.5-45.3 0s-12.5 32.8 0 45.3L146.7 256 41.4 361.4c-12.5 12.5-12.5 32.8 0 45.3s32.8 12.5 45.3 0L192 301.3 297.4 406.6c12.5 12.5 32.8 12.5 45.3 0s12.5-32.8 0-45.3L237.3 256 342.6 150.6z" />
                                    </svg>
                                </button>
                            </div>

                            <!--Modal body-->
                            <div class="relative p-4">
                                <!-- Card image -->
                                <img class="rounded-t-lg" src="" alt="Imagen de producto" loading="lazy"/>
                                <!-- Card header -->
                                <div class="border-b-2 border-neutral-100 px-6 py-4 dark:border-neutral-500">
                                    <h5 class="flex items-center justify-center text-neutral-500 dark:text-neutral-300">
                                            <span class="mr-2 text-green-700 font-bold">
                                                L. {{price}}
                                            </span>
                                        <span class="inline-block whitespace-nowrap rounded-[0.27rem] bg-blue-100 px-[0.65em] pb-[0.25em] pt-[0.35em] text-center align-baseline text-[0.75em] font-bold leading-none text-red-700">
                                                {{categoriesName}}
                                            </span>
                                    </h5>
                                </div>
                                <p>
                                    <strong> Descripción: </strong>
                                            {{description}}
                                            <br /><br />
                                    <strong> Ingredientes: </strong>
                                            {{ingredients}}
                                </p>
                            </div>

                            <!--Modal footer-->
                            <div class="flex flex-shrink-0 flex-wrap items-center justify-end rounded-b-md border-t-2 border-neutral-100 border-opacity-100 p-4 dark:border-opacity-50">
                                <button type="button" class="ml-1 inline-block rounded bg-danger-600 px-6 pb-2 pt-2.5 text-xs font-medium uppercase leading-normal text-white shadow-[0_4px_9px_-4px_#3b71ca] transition duration-150 ease-in-out hover:bg-danger-500 hover:shadow-[0_8px_9px_-4px_rgba(59,113,202,0.3),0_4px_18px_0_rgba(59,113,202,0.2)] focus:bg-danger-700 focus:shadow-[0_8px_9px_-4px_rgba(59,113,202,0.3),0_4px_18px_0_rgba(59,113,202,0.2)] focus:outline-none focus:ring-0 active:bg-danger-800 active:shadow-[0_8px_9px_-4px_rgba(59,113,202,0.3),0_4px_18px_0_rgba(59,113,202,0.2)] dark:shadow-[0_4px_9px_-4px_rgba(59,113,202,0.5)] dark:hover:shadow-[0_8px_9px_-4px_rgba(59,113,202,0.2),0_4px_18px_0_rgba(59,113,202,0.1)] dark:focus:shadow-[0_8px_9px_-4px_rgba(59,113,202,0.2),0_4px_18px_0_rgba(59,113,202,0.1)] dark:active:shadow-[0_8px_9px_-4px_rgba(59,113,202,0.2),0_4px_18px_0_rgba(59,113,202,0.1)]" data-te-ripple-init data-te-ripple-color="light">
                                    Añadir al carrito
                                </button>

                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    <!-- Card -->
    {{endfor menuPublic}}
</div>


